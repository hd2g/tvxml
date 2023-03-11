module xml

pub interface XmlTag {
  name string
  attributes []XmlAttribute
  must_have_close_tag bool
  tags []XmlTag
}

pub interface XmlAttribute {
  name string
  value XmlAttributableType
}

pub type XmlAttributableType
  = string
  | Integer
  | Float
  | bool

pub type Integer = int
pub type Float = f32

// Showable to xml tag as string.
pub interface Showable {
  stringify() string
}

// Constructable "X" from string. But it maybe failure.
pub interface Constructable[X] {
  parse(text string) !X
}

pub fn parse(text string) !XmlTag
