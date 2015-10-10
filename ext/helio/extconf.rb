require 'mkmf'

extension_name = 'helio/helio'


RLIBDIR      = RbConfig::CONFIG['libdir']
RINCLUDEDIR  = RbConfig::CONFIG['includedir']

unless find_header('ruby.h', RINCLUDEDIR)
  abort "ruby.h can't be found."
end


INC = "$HOME/include"
HEADERDIRS = "../include"
system "cp -r #{INC} #{HEADERDIRS}"

unless find_header('sofa.h', HEADERDIRS)
  abort "sofa.h and sofam.h are missing.  please install libsofa-c-dev"
end

# setup constant that is equal to that of the file path that holds that static libraries 
# that will need to be compiled against
LIB = "$HOME/lib"
LIBDIRS = "../lib"
system "cp -r #{LIB} #{LIBDIRS}"

LIBS = 'sofa_c'
FUNC = 'iauFalp03'
unless find_library(LIBS, FUNC, LIBDIRS)
  abort "libsofa_c.a is missing.  please install libsofa-c"
end

# array of all libraries that the C extension should be compiled against
libs = ['-lsofa_c']
# iterate though the libs array, and append them to the $LOCAL_LIBS array used for 
# the makefile creation
libs.each do |lib|
  $LOCAL_LIBS << "#{lib} "
end

dir_config('sofa_c', HEADERDIRS, LIBDIRS)
dir_config(extension_name)
create_makefile(extension_name)
