// Generated by gencpp from file geek_gasteiz/MsgGeek.msg
// DO NOT EDIT!


#ifndef GEEK_GASTEIZ_MESSAGE_MSGGEEK_H
#define GEEK_GASTEIZ_MESSAGE_MSGGEEK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace geek_gasteiz
{
template <class ContainerAllocator>
struct MsgGeek_
{
  typedef MsgGeek_<ContainerAllocator> Type;

  MsgGeek_()
    : stamp()
    , num(0.0)  {
    }
  MsgGeek_(const ContainerAllocator& _alloc)
    : stamp()
    , num(0.0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef float _num_type;
  _num_type num;




  typedef boost::shared_ptr< ::geek_gasteiz::MsgGeek_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::geek_gasteiz::MsgGeek_<ContainerAllocator> const> ConstPtr;

}; // struct MsgGeek_

typedef ::geek_gasteiz::MsgGeek_<std::allocator<void> > MsgGeek;

typedef boost::shared_ptr< ::geek_gasteiz::MsgGeek > MsgGeekPtr;
typedef boost::shared_ptr< ::geek_gasteiz::MsgGeek const> MsgGeekConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::geek_gasteiz::MsgGeek_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace geek_gasteiz

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geek_gasteiz': ['/home/igor/catkin_ws/src/geek_gasteiz/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::geek_gasteiz::MsgGeek_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geek_gasteiz::MsgGeek_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geek_gasteiz::MsgGeek_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2b5fd030953573f8ed3dc9bd836e9962";
  }

  static const char* value(const ::geek_gasteiz::MsgGeek_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2b5fd030953573f8ULL;
  static const uint64_t static_value2 = 0xed3dc9bd836e9962ULL;
};

template<class ContainerAllocator>
struct DataType< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geek_gasteiz/MsgGeek";
  }

  static const char* value(const ::geek_gasteiz::MsgGeek_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n\
float32 num\n\
";
  }

  static const char* value(const ::geek_gasteiz::MsgGeek_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MsgGeek_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::geek_gasteiz::MsgGeek_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::geek_gasteiz::MsgGeek_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "num: ";
    Printer<float>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GEEK_GASTEIZ_MESSAGE_MSGGEEK_H
