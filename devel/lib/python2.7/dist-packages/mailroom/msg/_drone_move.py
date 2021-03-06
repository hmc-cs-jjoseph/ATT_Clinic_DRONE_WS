# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mailroom/drone_move.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class drone_move(genpy.Message):
  _md5sum = "d3e5d4bf910ad7e655ded5b4d5eff2ea"
  _type = "mailroom/drone_move"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 local_x
float32 local_y
float32 height
float32 az_angle
uint32[] channels
"""
  __slots__ = ['local_x','local_y','height','az_angle','channels']
  _slot_types = ['float32','float32','float32','float32','uint32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       local_x,local_y,height,az_angle,channels

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(drone_move, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.local_x is None:
        self.local_x = 0.
      if self.local_y is None:
        self.local_y = 0.
      if self.height is None:
        self.height = 0.
      if self.az_angle is None:
        self.az_angle = 0.
      if self.channels is None:
        self.channels = []
    else:
      self.local_x = 0.
      self.local_y = 0.
      self.height = 0.
      self.az_angle = 0.
      self.channels = []

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
      buff.write(_get_struct_4f().pack(_x.local_x, _x.local_y, _x.height, _x.az_angle))
      length = len(self.channels)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(struct.pack(pattern, *self.channels))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.local_x, _x.local_y, _x.height, _x.az_angle,) = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.channels = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_4f().pack(_x.local_x, _x.local_y, _x.height, _x.az_angle))
      length = len(self.channels)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(self.channels.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.local_x, _x.local_y, _x.height, _x.az_angle,) = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.channels = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
