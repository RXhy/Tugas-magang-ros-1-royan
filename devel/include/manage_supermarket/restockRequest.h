// Generated by gencpp from file manage_supermarket/restockRequest.msg
// DO NOT EDIT!


#ifndef MANAGE_SUPERMARKET_MESSAGE_RESTOCKREQUEST_H
#define MANAGE_SUPERMARKET_MESSAGE_RESTOCKREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace manage_supermarket
{
template <class ContainerAllocator>
struct restockRequest_
{
  typedef restockRequest_<ContainerAllocator> Type;

  restockRequest_()
    : name()
    , newStock(0)  {
    }
  restockRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , newStock(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef int64_t _newStock_type;
  _newStock_type newStock;





  typedef boost::shared_ptr< ::manage_supermarket::restockRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::manage_supermarket::restockRequest_<ContainerAllocator> const> ConstPtr;

}; // struct restockRequest_

typedef ::manage_supermarket::restockRequest_<std::allocator<void> > restockRequest;

typedef boost::shared_ptr< ::manage_supermarket::restockRequest > restockRequestPtr;
typedef boost::shared_ptr< ::manage_supermarket::restockRequest const> restockRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::manage_supermarket::restockRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::manage_supermarket::restockRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::manage_supermarket::restockRequest_<ContainerAllocator1> & lhs, const ::manage_supermarket::restockRequest_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.newStock == rhs.newStock;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::manage_supermarket::restockRequest_<ContainerAllocator1> & lhs, const ::manage_supermarket::restockRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace manage_supermarket

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::manage_supermarket::restockRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::manage_supermarket::restockRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::manage_supermarket::restockRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::manage_supermarket::restockRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::manage_supermarket::restockRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::manage_supermarket::restockRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::manage_supermarket::restockRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09fe301e56cbb47bc199c7b2c7d047dd";
  }

  static const char* value(const ::manage_supermarket::restockRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09fe301e56cbb47bULL;
  static const uint64_t static_value2 = 0xc199c7b2c7d047ddULL;
};

template<class ContainerAllocator>
struct DataType< ::manage_supermarket::restockRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "manage_supermarket/restockRequest";
  }

  static const char* value(const ::manage_supermarket::restockRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::manage_supermarket::restockRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"int64 newStock\n"
;
  }

  static const char* value(const ::manage_supermarket::restockRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::manage_supermarket::restockRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.newStock);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct restockRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::manage_supermarket::restockRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::manage_supermarket::restockRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "newStock: ";
    Printer<int64_t>::stream(s, indent + "  ", v.newStock);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MANAGE_SUPERMARKET_MESSAGE_RESTOCKREQUEST_H
