# class Eot file = displays.rb
class Eot
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'displays_spec'
  require 'aliased_displays_spec'

end
