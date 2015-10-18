require 'mkmf'
require "mini_portile"


recipe1 = MiniPortile.new("libsofa_c", "1.0")
recipe1.files = ["https://github.com/DouglasAllen/libsofa_c-1.0/raw/master/libsofa_c-1.0.tar"]
recipe1.cook

extension_name = 'helio/helio'


RLIBDIR      = RbConfig::CONFIG['libdir']
RINCLUDEDIR  = RbConfig::CONFIG['includedir']

unless find_header('ruby.h', RINCLUDEDIR)
  abort "ruby.h can't be found."
end

$LIBS << " #{ENV["LIBS"]}"
SOFAH = File.expand_path("../../../tmp/i686-linux/helio/2.2.2/tmp/i486-linux-gnu/ports/libsofa_c/1.0/libsofa_c-1.0/sofa.h", __FILE__)
SOFAMH = File.expand_path("../../../tmp/i686-linux/helio/2.2.2/tmp/i486-linux-gnu/ports/libsofa_c/1.0/libsofa_c-1.0/sofam.h", __FILE__)
HEADERDIRS = File.expand_path("../", __FILE__)
p system "cp #{SOFAH} #{HEADERDIRS}/sofa.h"
system "cp #{SOFAMH} #{HEADERDIRS}/sofam.h"

unless find_header('sofa.h', HEADERDIRS)
  abort "sofa.h and sofam.h are missing.  please install libsofa-c-dev"
end

# setup constant that is equal to that of the file path that holds that static libraries 
# that will need to be compiled against
LIBSOFA = File.expand_path("../../../tmp/i686-linux/helio/2.2.2/tmp/i486-linux-gnu/ports/libsofa_c/1.0/libsofa_c-1.0/libsofa_c.a", __FILE__)
LIBDIRS = File.expand_path("../", __FILE__)
system "cp #{LIBSOFA} #{LIBDIRS}/libsofa_c.a"

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
