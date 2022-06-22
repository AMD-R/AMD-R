// Generated by gencpp from file arm_controller/NavRequest.msg
// DO NOT EDIT!


#ifndef ARM_CONTROLLER_MESSAGE_NAVREQUEST_H
#define ARM_CONTROLLER_MESSAGE_NAVREQUEST_H


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
struct NavRequest_
{
  typedef NavRequest_<ContainerAllocator> Type;

  NavRequest_()
    : resultNav(false)  {
    }
  NavRequest_(const ContainerAllocator& _alloc)
    : resultNav(false)  {
  (void)_alloc;
    }



   typedef uint8_t _resultNav_type;
  _resultNav_type resultNav;





  typedef boost::shared_ptr< ::arm_controller::NavRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_controller::NavRequest_<ContainerAllocator> const> ConstPtr;

}; // struct NavRequest_

typedef ::arm_controller::NavRequest_<std::allocator<void> > NavRequest;

typedef boost::shared_ptr< ::arm_controller::NavRequest > NavRequestPtr;
typedef boost::shared_ptr< ::arm_controller::NavRequest const> NavRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_controller::NavRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_controller::NavRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_controller::NavRequest_<ContainerAllocator1> & lhs, const ::arm_controller::NavRequest_<ContainerAllocator2> & rhs)
{
  return lhs.resultNav == rhs.resultNav;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_controller::NavRequest_<ContainerAllocator1> & lhs, const ::arm_controller::NavRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_controller::NavRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_controller::NavRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_controller::NavRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_controller::NavRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_controller::NavRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_controller::NavRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_controller::NavRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2f490184d83c40759d5f26ec156d4477";
  }

  static const char* value(const ::arm_controller::NavRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2f490184d83c4075ULL;
  static const uint64_t static_value2 = 0x9d5f26ec156d4477ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_controller::NavRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_controller/NavRequest";
  }

  static const char* value(const ::arm_controller::NavRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_controller::NavRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool resultNav\n"
;
  }

  static const char* value(const ::arm_controller::NavRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_controller::NavRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.resultNav);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_controller::NavRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_controller::NavRequest_<ContainerAllocator>& v)
  {
    s << indent << "resultNav: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.resultNav);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_CONTROLLER_MESSAGE_NAVREQUEST_H