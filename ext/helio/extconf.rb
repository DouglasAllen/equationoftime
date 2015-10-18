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
SOFAH = File.expand_path("../tmp/i486-linux-gnu/ports/libsofa_c/1.0/libsofa_c-1.0/sofa.h", __FILE__)
SOFAMH = File.expand_path("../tmp/i486-linux-gnu/ports/libsofa_c/1.0/libsofa_c-1.0/sofam.h", __FILE__)
HEADERDIR = File.expand_path("../", __FILE__)
puts "copying sofa.h from #{SOFAH}"
puts "putting sofa.h in #{HEADERDIR}"
system "cp #{SOFAH} #{HEADERDIR}/sofa.h"
puts "copying sofa.h from #{SOFAMH}"
puts "putting sofam.h in #{HEADERDIR}"
system "cp #{SOFAMH} #{HEADERDIR}/sofam.h"

unless find_header('sofa.h', HEADERDIR)
  abort "sofa.h and sofam.h are missing.  please install libsofa-c-dev"
end

# setup constant that is equal to that of the file path that holds that static libraries 
# that will need to be compiled against
LIBSOFA = File.expand_path("../tmp/i486-linux-gnu/ports/libsofa_c/1.0/libsofa_c-1.0/libsofa_c.a", __FILE__)
LIBDIR = File.expand_path("../", __FILE__)
puts "copying libsofa_c.a from #{LIBSOFA}"
puts "putting sofa.h in #{HEADERDIR}"
system "cp #{LIBSOFA} #{LIBDIR}/libsofa_c.a"

LIBS = 'sofa_c'
FUNC = 'iauFalp03'
unless find_library(LIBS, FUNC, LIBDIR)
  abort "libsofa_c.a is missing.  please install libsofa-c"
end

# array of all libraries that the C extension should be compiled against
libs = ['-lsofa_c']
# iterate though the libs array, and append them to the $LOCAL_LIBS array used for 
# the makefile creation
libs.each do |lib|
  $LOCAL_LIBS << "#{lib} "
end

dir_config('sofa_c', HEADERDIR, LIBDIR)
dir_config(extension_name)
create_makefile(extension_name)
