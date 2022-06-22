// Generated by gencpp from file arm_controller/NavResponse.msg
// DO NOT EDIT!


#ifndef ARM_CONTROLLER_MESSAGE_NAVRESPONSE_H
#define ARM_CONTROLLER_MESSAGE_NAVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_controller
{
template <class ContainerAllocator>
struct NavResponse_
{
  typedef NavResponse_<ContainerAllocator> Type;

  NavResponse_()
    : location(0)  {
    }
  NavResponse_(const ContainerAllocator& _alloc)
    : location(0)  {
  (void)_alloc;
    }



   typedef int64_t _location_type;
  _location_type location;





  typedef boost::shared_ptr< ::arm_controller::NavResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_controller::NavResponse_<ContainerAllocator> const> ConstPtr;

}; // struct NavResponse_

typedef ::arm_controller::NavResponse_<std::allocator<void> > NavResponse;

typedef boost::shared_ptr< ::arm_controller::NavResponse > NavResponsePtr;
typedef boost::shared_ptr< ::arm_controller::NavResponse const> NavResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_controller::NavResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_controller::NavResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_controller::NavResponse_<ContainerAllocator1> & lhs, const ::arm_controller::NavResponse_<ContainerAllocator2> & rhs)
{
  return lhs.location == rhs.location;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_controller::NavResponse_<ContainerAllocator1> & lhs, const ::arm_controller::NavResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_controller::NavResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_controller::NavResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_controller::NavResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_controller::NavResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_controller::NavResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_controller::NavResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_controller::NavResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de6fa78183a83e4b16b9ee4a6028b8b2";
  }

  static const char* value(const ::arm_controller::NavResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde6fa78183a83e4bULL;
  static const uint64_t static_value2 = 0x16b9ee4a6028b8b2ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_controller::NavResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_controller/NavResponse";
  }

  static const char* value(const ::arm_controller::NavResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_controller::NavResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 location\n"
"\n"
"\n"
;
  }

  static const char* value(const ::arm_controller::NavResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_controller::NavResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.location);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_controller::NavResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_controller::NavResponse_<ContainerAllocator>& v)
  {
    s << indent << "location: ";
    Printer<int64_t>::stream(s, indent + "  ", v.location);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_CONTROLLER_MESSAGE_NAVRESPONSE_H