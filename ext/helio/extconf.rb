require 'mkmf'
extension_name = 'helio/helio'

LIBDIR      = RbConfig::CONFIG['libdir']
INCLUDEDIR  = RbConfig::CONFIG['includedir']

HEADERDIRS = [INCLUDEDIR]

# setup constant that is equal to that of the file path that holds that static libraries 
# that will need to be compiled against
LIBDIRS = [LIBDIR, File.expand_path(File.join(File.dirname(__FILE__), "lib"))]
# array of all libraries that the C extension should be compiled against
libs = ['-lsofa_c']

unless find_header('ruby.h', INCLUDEDIR)
  abort "ruby.h can't be found."
end

unless find_header('sofa.h', HEADERDIRS)
  abort "sofa.h and sofam.h are missing.  please install libsofa-c-dev"
end

# LIBS = 'sofa_c'
# FUNC = 'iauFalp03'
# unless find_library(LIBS, FUNC, LIBDIRS)
#   abort "libsofa_c is missing.  please install libsofa-c.a"
# end

dir_config('sofa_c', HEADERDIRS, LIBDIRS)

# iterate though the libs array, and append them to the $LOCAL_LIBS array used for 
# the makefile creation
libs.each do |lib|
  $LOCAL_LIBS << "#{lib} "
end

dir_config(extension_name)
create_makefile(extension_name)
