# ~ # nutation_spec.rb
# ~ #

# ~ require_relative 'spec_config'

# ~ lib = File.expand_path('../../../lib', __FILE__)
# ~ $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# ~ require 'eot'

# ~ Eot_nutation = Eot.new

# ~ describe 'Eot_nutation using ajd of 2456885.0' do

# ~ before(:each) do
# ~ Eot_nutation.ajd           = 2456885.0
# ~ ajd = Eot_nutation.ajd
# ~ Eot_nutation.date =  Eot_nutation.ajd_to_datetime(ajd)
# ~ end

# ~ it 'expected   2456885.0 from Eot_nutation.ajd' do
# ~ assert_equal 2456885.0, Eot_nutation.ajd
# ~ end

# ~ it 'expected   "2014-08-15T12:00:00+00:00" from Eot_nutation.date.to_s' do
# ~ assert_equal "2014-08-15T12:00:00+00:00", Eot_nutation.date.to_s
# ~ end

# ~ it 'expected   3.8508003966038915 from Eot_nutation.ma' do
# ~ assert_equal 3.8508003966038915, Eot_nutation.ma
# ~ end

# EOT_NUTATION_DELTAS = [3.75123821843003e-05, -4.069792718159396e-05]
# it "expected #{EOT_NUTATION_DELTAS} from  Eot_nutation.delta_equinox()" do
#   assert_equal EOT_NUTATION_DELTAS, Eot_nutation.delta_equinox()
# end
#
# ~ end
