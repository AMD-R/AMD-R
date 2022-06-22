// Generated by gencpp from file arm_controller/Arm.msg
// DO NOT EDIT!


#ifndef ARM_CONTROLLER_MESSAGE_ARM_H
#define ARM_CONTROLLER_MESSAGE_ARM_H

#include <ros/service_traits.h>


#include <arm_controller/ArmRequest.h>
#include <arm_controller/ArmResponse.h>


namespace arm_controller
{

struct Arm
{

typedef ArmRequest Request;
typedef ArmResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Arm
} // namespace arm_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::arm_controller::Arm > {
  static const char* value()
  {
    return "7768e40cbfffda0fd377b4962bb94200";
  }

  static const char* value(const ::arm_controller::Arm&) { return value(); }
};

template<>
struct DataType< ::arm_controller::Arm > {
  static const char* value()
  {
    return "arm_controller/Arm";
  }

  static const char* value(const ::arm_controller::Arm&) { return value(); }
};


// service_traits::MD5Sum< ::arm_controller::ArmRequest> should match
// service_traits::MD5Sum< ::arm_controller::Arm >
template<>
struct MD5Sum< ::arm_controller::ArmRequest>
{
  static const char* value()
  {
    return MD5Sum< ::arm_controller::Arm >::value();
  }
  static const char* value(const ::arm_controller::ArmRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::arm_controller::ArmRequest> should match
// service_traits::DataType< ::arm_controller::Arm >
template<>
struct DataType< ::arm_controller::ArmRequest>
{
  static const char* value()
  {
    return DataType< ::arm_controller::Arm >::value();
  }
  static const char* value(const ::arm_controller::ArmRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::arm_controller::ArmResponse> should match
// service_traits::MD5Sum< ::arm_controller::Arm >
template<>
struct MD5Sum< ::arm_controller::ArmResponse>
{
  static const char* value()
  {
    return MD5Sum< ::arm_controller::Arm >::value();
  }
  static const char* value(const ::arm_controller::ArmResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::arm_controller::ArmResponse> should match
// service_traits::DataType< ::arm_controller::Arm >
template<>
struct DataType< ::arm_controller::ArmResponse>
{
  static const char* value()
  {
    return DataType< ::arm_controller::Arm >::value();
  }
  static const char* value(const ::arm_controller::ArmResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ARM_CONTROLLER_MESSAGE_ARM_H