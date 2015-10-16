# More info at https://github.com/guard/guard#readme

guard :minitest do
  # with Minitest::Unit
  watch('test/eot/*_test.rb')
  watch('lib/eot/*.rb') { |m| "test/#{m[1]}test_#{m[2]}.rb" }

  # with Minitest::Spec
<<<<<<< HEAD
  watch('test/eot/*_spec.rb')
  watch('lib/eot/*.rb') { |m| "test/#{m[1]}_spec.rb" }
=======
  watch(%r{^test/(.*)_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})         { |m| "test/#{m[1]}_spec.rb" }
  watch(%r{^test/test_helper\.rb$}) { 'spec' }
>>>>>>> 4134ca23c425bd1337a39d7ee1ef2a10a4f89f9e

end
