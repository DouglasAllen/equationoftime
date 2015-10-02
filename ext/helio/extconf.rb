require 'mkmf'
extension_name = 'helio/helio'

LIBDIR      = RbConfig::CONFIG['libdir']
INCLUDEDIR  = RbConfig::CONFIG['includedir']

HEADER_DIRS = [
  # First search /opt/local for macports
  #'/opt/local/include',

  # Then search /usr/local for people that installed from source
  #'/usr/local/include',

  # Check the ruby install locations
  INCLUDEDIR,

  # Finally fall back to /usr
  #'/usr/include',
  '../',
]

LIB_DIRS = [
  # First search /opt/local for macports
  #'/opt/local/lib',

  # Then search /usr/local for people that installed from source
  #'/usr/local/lib',

  # Check the ruby install locations
  LIBDIR,

  # Finally fall back to /usr
  #'/usr/lib',
  '../',
]

unless find_header('ruby.h')
  abort "ruby.h can't be found."
end
unless find_header('sofam.h')
  abort "libsofa_c is missing.  please install libsofa-c-dev"
end
unless find_library('sofa_c', 'iauFapl03')
  abort "libsofa_c is missing.  please install libsofa-c0"
end
dir_config('sofa_c', HEADER_DIRS, LIB_DIRS)
dir_config(extension_name)
create_makefile(extension_name)
