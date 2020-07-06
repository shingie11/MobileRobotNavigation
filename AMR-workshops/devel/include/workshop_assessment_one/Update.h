// Generated by gencpp from file workshop_assessment_one/Update.msg
// DO NOT EDIT!


#ifndef WORKSHOP_ASSESSMENT_ONE_MESSAGE_UPDATE_H
#define WORKSHOP_ASSESSMENT_ONE_MESSAGE_UPDATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace workshop_assessment_one
{
template <class ContainerAllocator>
struct Update_
{
  typedef Update_<ContainerAllocator> Type;

  Update_()
    : input(0)
    , m(0)
    , pbelC(0.0)
    , pbelD(0.0)
    , pAC(0.0)
    , pAD(0.0)
    , pBC(0.0)
    , pBD(0.0)
    , pCEC(0.0)
    , pDEC(0.0)
    , pCED(0.0)
    , pDED(0.0)
    , pCFC(0.0)
    , pDFC(0.0)
    , pCFD(0.0)
    , pDFD(0.0)  {
    }
  Update_(const ContainerAllocator& _alloc)
    : input(0)
    , m(0)
    , pbelC(0.0)
    , pbelD(0.0)
    , pAC(0.0)
    , pAD(0.0)
    , pBC(0.0)
    , pBD(0.0)
    , pCEC(0.0)
    , pDEC(0.0)
    , pCED(0.0)
    , pDED(0.0)
    , pCFC(0.0)
    , pDFC(0.0)
    , pCFD(0.0)
    , pDFD(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _input_type;
  _input_type input;

   typedef uint8_t _m_type;
  _m_type m;

   typedef float _pbelC_type;
  _pbelC_type pbelC;

   typedef float _pbelD_type;
  _pbelD_type pbelD;

   typedef float _pAC_type;
  _pAC_type pAC;

   typedef float _pAD_type;
  _pAD_type pAD;

   typedef float _pBC_type;
  _pBC_type pBC;

   typedef float _pBD_type;
  _pBD_type pBD;

   typedef float _pCEC_type;
  _pCEC_type pCEC;

   typedef float _pDEC_type;
  _pDEC_type pDEC;

   typedef float _pCED_type;
  _pCED_type pCED;

   typedef float _pDED_type;
  _pDED_type pDED;

   typedef float _pCFC_type;
  _pCFC_type pCFC;

   typedef float _pDFC_type;
  _pDFC_type pDFC;

   typedef float _pCFD_type;
  _pCFD_type pCFD;

   typedef float _pDFD_type;
  _pDFD_type pDFD;





  typedef boost::shared_ptr< ::workshop_assessment_one::Update_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::workshop_assessment_one::Update_<ContainerAllocator> const> ConstPtr;

}; // struct Update_

typedef ::workshop_assessment_one::Update_<std::allocator<void> > Update;

typedef boost::shared_ptr< ::workshop_assessment_one::Update > UpdatePtr;
typedef boost::shared_ptr< ::workshop_assessment_one::Update const> UpdateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::workshop_assessment_one::Update_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::workshop_assessment_one::Update_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace workshop_assessment_one

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'workshop_assessment_one': ['/home/sdhoro/amr/AMR-workshops/src/workshop_assessment_one/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::workshop_assessment_one::Update_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::workshop_assessment_one::Update_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::workshop_assessment_one::Update_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::workshop_assessment_one::Update_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::workshop_assessment_one::Update_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::workshop_assessment_one::Update_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::workshop_assessment_one::Update_<ContainerAllocator> >
{
  static const char* value()
  {
    return "173bd9d26460de84cdbc682effdcf48f";
  }

  static const char* value(const ::workshop_assessment_one::Update_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x173bd9d26460de84ULL;
  static const uint64_t static_value2 = 0xcdbc682effdcf48fULL;
};

template<class ContainerAllocator>
struct DataType< ::workshop_assessment_one::Update_<ContainerAllocator> >
{
  static const char* value()
  {
    return "workshop_assessment_one/Update";
  }

  static const char* value(const ::workshop_assessment_one::Update_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::workshop_assessment_one::Update_<ContainerAllocator> >
{
  static const char* value()
  {
    return "char input\n\
char m\n\
float32 pbelC \n\
float32 pbelD \n\
float32 pAC \n\
float32 pAD \n\
float32 pBC \n\
float32 pBD \n\
float32 pCEC\n\
float32 pDEC\n\
float32 pCED\n\
float32 pDED\n\
float32 pCFC\n\
float32 pDFC\n\
float32 pCFD\n\
float32 pDFD\n\
\n\
 \n\
";
  }

  static const char* value(const ::workshop_assessment_one::Update_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::workshop_assessment_one::Update_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input);
      stream.next(m.m);
      stream.next(m.pbelC);
      stream.next(m.pbelD);
      stream.next(m.pAC);
      stream.next(m.pAD);
      stream.next(m.pBC);
      stream.next(m.pBD);
      stream.next(m.pCEC);
      stream.next(m.pDEC);
      stream.next(m.pCED);
      stream.next(m.pDED);
      stream.next(m.pCFC);
      stream.next(m.pDFC);
      stream.next(m.pCFD);
      stream.next(m.pDFD);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Update_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::workshop_assessment_one::Update_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::workshop_assessment_one::Update_<ContainerAllocator>& v)
  {
    s << indent << "input: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.input);
    s << indent << "m: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.m);
    s << indent << "pbelC: ";
    Printer<float>::stream(s, indent + "  ", v.pbelC);
    s << indent << "pbelD: ";
    Printer<float>::stream(s, indent + "  ", v.pbelD);
    s << indent << "pAC: ";
    Printer<float>::stream(s, indent + "  ", v.pAC);
    s << indent << "pAD: ";
    Printer<float>::stream(s, indent + "  ", v.pAD);
    s << indent << "pBC: ";
    Printer<float>::stream(s, indent + "  ", v.pBC);
    s << indent << "pBD: ";
    Printer<float>::stream(s, indent + "  ", v.pBD);
    s << indent << "pCEC: ";
    Printer<float>::stream(s, indent + "  ", v.pCEC);
    s << indent << "pDEC: ";
    Printer<float>::stream(s, indent + "  ", v.pDEC);
    s << indent << "pCED: ";
    Printer<float>::stream(s, indent + "  ", v.pCED);
    s << indent << "pDED: ";
    Printer<float>::stream(s, indent + "  ", v.pDED);
    s << indent << "pCFC: ";
    Printer<float>::stream(s, indent + "  ", v.pCFC);
    s << indent << "pDFC: ";
    Printer<float>::stream(s, indent + "  ", v.pDFC);
    s << indent << "pCFD: ";
    Printer<float>::stream(s, indent + "  ", v.pCFD);
    s << indent << "pDFD: ";
    Printer<float>::stream(s, indent + "  ", v.pDFD);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WORKSHOP_ASSESSMENT_ONE_MESSAGE_UPDATE_H
