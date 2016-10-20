# class Eot file = version.rb
# contains gem version
class Eot
  # current version
  VERSION = '4.1.8'
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'version_spec'

end
