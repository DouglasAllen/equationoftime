require 'mkmf'
extension_name = 'helio/helio'

LIBDIR      = RbConfig::CONFIG['libdir']
INCLUDEDIR  = RbConfig::CONFIG['includedir']

HEADERDIRS = File.expand_path('../', __FILE__)

LIBDIRS = File.expand_path('../lib', __FILE__)

unless find_header('ruby.h', INCLUDEDIR)
  abort "ruby.h can't be found."
end

unless find_header('sofa.h', HEADERDIRS)
  abort "sofa.h and sofam.h are missing.  please install libsofa-c-dev"
end

LIBS = 'sofa_c'
FUNC = 'iauCal2jd'
unless find_library(LIBS, FUNC, LIBDIRS)
  abort "libsofa_c is missing.  please install libsofa-c0"
end

dir_config('sofa_c', HEADERDIRS, LIBDIRS)

dir_config(extension_name)
create_makefile(extension_name)
