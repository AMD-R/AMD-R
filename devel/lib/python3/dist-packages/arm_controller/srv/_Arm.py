# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from arm_controller/ArmRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ArmRequest(genpy.Message):
  _md5sum = "cfe05b3d31fda1f208b5c16a4f011f4c"
  _type = "arm_controller/ArmRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 dist_x
float32 dist_y
float32 dist_z
int16 rpm_y
int16 rpm_z
bool cmd_x
"""
  __slots__ = ['dist_x','dist_y','dist_z','rpm_y','rpm_z','cmd_x']
  _slot_types = ['float32','float32','float32','int16','int16','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       dist_x,dist_y,dist_z,rpm_y,rpm_z,cmd_x

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ArmRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.dist_x is None:
        self.dist_x = 0.
      if self.dist_y is None:
        self.dist_y = 0.
      if self.dist_z is None:
        self.dist_z = 0.
      if self.rpm_y is None:
        self.rpm_y = 0
      if self.rpm_z is None:
        self.rpm_z = 0
      if self.cmd_x is None:
        self.cmd_x = False
    else:
      self.dist_x = 0.
      self.dist_y = 0.
      self.dist_z = 0.
      self.rpm_y = 0
      self.rpm_z = 0
      self.cmd_x = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3f2hB().pack(_x.dist_x, _x.dist_y, _x.dist_z, _x.rpm_y, _x.rpm_z, _x.cmd_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 17
      (_x.dist_x, _x.dist_y, _x.dist_z, _x.rpm_y, _x.rpm_z, _x.cmd_x,) = _get_struct_3f2hB().unpack(str[start:end])
      self.cmd_x = bool(self.cmd_x)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3f2hB().pack(_x.dist_x, _x.dist_y, _x.dist_z, _x.rpm_y, _x.rpm_z, _x.cmd_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 17
      (_x.dist_x, _x.dist_y, _x.dist_z, _x.rpm_y, _x.rpm_z, _x.cmd_x,) = _get_struct_3f2hB().unpack(str[start:end])
      self.cmd_x = bool(self.cmd_x)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3f2hB = None
def _get_struct_3f2hB():
    global _struct_3f2hB
    if _struct_3f2hB is None:
        _struct_3f2hB = struct.Struct("<3f2hB")
    return _struct_3f2hB
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from arm_controller/ArmResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ArmResponse(genpy.Message):
  _md5sum = "7573387fab88d9bcb19d95022c6b9cce"
  _type = "arm_controller/ArmResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool resultArm
int8 status



"""
  __slots__ = ['resultArm','status']
  _slot_types = ['bool','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       resultArm,status

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ArmResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.resultArm is None:
        self.resultArm = False
      if self.status is None:
        self.status = 0
    else:
      self.resultArm = False
      self.status = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_Bb().pack(_x.resultArm, _x.status))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 2
      (_x.resultArm, _x.status,) = _get_struct_Bb().unpack(str[start:end])
      self.resultArm = bool(self.resultArm)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_Bb().pack(_x.resultArm, _x.status))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 2
      (_x.resultArm, _x.status,) = _get_struct_Bb().unpack(str[start:end])
      self.resultArm = bool(self.resultArm)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Bb = None
def _get_struct_Bb():
    global _struct_Bb
    if _struct_Bb is None:
        _struct_Bb = struct.Struct("<Bb")
    return _struct_Bb
class Arm(object):
  _type          = 'arm_controller/Arm'
  _md5sum = '7768e40cbfffda0fd377b4962bb94200'
  _request_class  = ArmRequest
  _response_class = ArmResponse
