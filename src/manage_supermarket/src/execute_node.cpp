#include "ros/ros.h"
#include "vector"
#include "manage_supermarket/add_product.h"
#include "manage_supermarket/restock.h"
#include "manage_supermarket/editharga.h"
#include "manage_supermarket/display.h"
#include "manage_supermarket/delete_product.h"
#include "manage_supermarket/jual_product.h"


class product{
public:
    std::string name;
    float price;
    int stock;
    float cuan;

    product(std::string name,float price,int stock)
    {
        this->name = name;
        this->price = price;
        this->stock = stock;
    }
    void restock(int beliStok){
        stock += beliStok;
    }
    void editPrice(float harga){
        price = harga;
    }
    void jual(int jualan,float untung){
        stock -= jualan;
        untung = jualan * price;
        this->cuan = untung; 
    }
};

std::vector<product> products;

bool AddProduct(manage_supermarket::add_product::Request &req, manage_supermarket::add_product::Response &res){
    products.emplace_back(req.name, req.price, req.stock);
    std::string verified;
    verified = "Name: " + req.name + ", Price: " + std::to_string(req.price) + ", Stock: " + std::to_string(req.stock);
    res.feedback = verified;
    return true;
    }

bool Restock(manage_supermarket::restock::Request &req, manage_supermarket::restock::Response &res){
    for (auto& prod : products) {
        if (req.name == prod.name) {
            prod.restock(req.newStock);
            res.feedback = "produk telah direstock";
            res.jumlah = prod.stock;
            return true;
        }
    
    }
    res.feedback = "produk tidak ditemukan";
    return true;
}

bool Display(manage_supermarket::display::Request &req, manage_supermarket::display::Response &res) {
    std::string allProducts;
    for (const auto& prod : products) {
        allProducts += "| Name: " + prod.name + " Price: " + std::to_string(prod.price) + " Stock: " + std::to_string(prod.stock) + "| ";
    }
    res.output = allProducts.empty() ? "Tidak ada produk" : allProducts;
    return true;
}

bool editharga(manage_supermarket::editharga::Request &req, manage_supermarket::editharga::Response &res) {
    for (auto& prod : products) {
        if (req.name == prod.name) {
            prod.editPrice(req.newHarga);
            res.harga_baru = std::to_string(prod.price);
            return true;
        } 
    }
    res.harga_baru = "Produk tidak ditemukan";
    return true;
}

bool jual(manage_supermarket::jual_product::Request &req, manage_supermarket::jual_product::Response &res){
    for (auto& prod : products) {
        if (req.name == prod.name) {
             if (req.amount > prod.stock){
            res.transaction = "stok tidak cukup";
            return true;
        }else{
            prod.jual(req.amount,prod.price);
            res.transaction = "produk " + prod.name + " terjual sebanyak " + std::to_string(req.amount) + ", untung " + std::to_string(prod.cuan);
            return true;
        }
        }
    }
    res.transaction = "Produk tidak ditemukan"; 
    return true;
}

bool deleteProduct(manage_supermarket::delete_product::Request &req, manage_supermarket::delete_product::Response &res){
for (auto it = products.begin(); it != products.end(); ) {
    if (it->name == req.name) {
        it = products.erase(it);
        res.feedback = "Produk telah dihapus.";
        return true;
    } else {
        ++it;
    }
}
res.feedback = "Produk tidak ditemukan.";
return true;
}

int main(int argc, char **argv) {

    ros::init(argc,argv,"Service_Node");
    ros::NodeHandle nh;

    ros::ServiceServer addservice = nh.advertiseService("add_new_product", AddProduct); 
    ros::ServiceServer restockservice = nh.advertiseService("restock_product", Restock); 
    ros::ServiceServer displayservice = nh.advertiseService("display_product", Display); 
    ros::ServiceServer edithargaservice = nh.advertiseService("edit_harga_product", editharga); 
    ros::ServiceServer jualservice = nh.advertiseService("jual_product", jual); 
    ros::ServiceServer deleteservice = nh.advertiseService("delete_product", deleteProduct); 

        
    ros::spin();
    return 0;
}
