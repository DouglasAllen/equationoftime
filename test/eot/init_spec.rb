# init_spec.rb
gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

describe 'Eot_initialize has set attributes ' do

  AJD_TODAY   = DateTime.now.to_time.utc.to_datetime.ajd.to_f.round(6)
  eot = Eot.new  
  TODAY       = DateTime.now.to_time.utc.to_date
  MA_SUN      = eot.ma_sun
  FRAC_CENT   = ((AJD_TODAY - Eot::DJ00) / Eot::DJC).round(9)
  JD_TODAY    = DateTime.now.to_time.utc.to_datetime.jd.to_f
  DEF_INT     = nil
  DEF_LAT     = 0.0
  DEF_LNG     = 0.0

  it "expected #{JD_TODAY} from eot.jd" do
    assert_equal(JD_TODAY, eot.jd)
  end
  
  it "expected #{AJD_TODAY} from eot.ajd" do
    assert_equal(AJD_TODAY, eot.ajd.round(6))
  end

  it "expected #{TODAY} from eot.date" do
    assert_equal(TODAY, eot.date)
  end

  it "expected #{DEF_LAT} from eot.latitude" do
    assert_equal(DEF_LAT, eot.latitude)
  end

  it "expected #{DEF_LNG} from eot.longitude" do
    assert_equal(DEF_LNG, eot.longitude)
  end
  
  it "expected #{MA_SUN} from @ma" do
    assert_equal(MA_SUN, eot.ma)
  end
  
  it "expected #{FRAC_CENT} from @t" do
    assert_equal(FRAC_CENT, eot.t.round(9))
  end
  
  it "expected #{DEF_INT} from eot.addr" do
    assert_equal(DEF_INT, eot.addr)
  end

end
