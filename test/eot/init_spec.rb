# init_spec.rb

require File.expand_path('../../test_helper', __FILE__)

describe 'Eot_initialize has set attributes ' do

  
  jd_today = Time.now.utc.to_datetime.jd.to_f
  lat = 0.0
  lng = 0.0  
  addr = nil

  ajd_now = Time.now.utc.to_datetime.ajd.to_f.round(6)
  it "expected #{ajd_now.round(6)} from Eot.new.ajd" do
    ajd_now = Time.now.utc.to_datetime.ajd.to_f.round(6)
    assert_equal(ajd_now, Eot.new.ajd.round(6))
  end

  it "expected #{jd_today} from Eot.new.jd" do
    assert_equal(jd_today, Eot.new.jd)
  end
  
  it "expected #{lat} from Eot.new.latitude" do
    assert_equal(lat, Eot.new.latitude)
  end
  
  it "expected #{lng} from Eot.new.longitude" do
    assert_equal(lng, Eot.new.longitude)
  end
  
  ma_sun = Eot.new.ma_sun.round(8)
  it "expected #{ma_sun.round(8)} from @ma" do
    ma_sun = Eot.new.ma_sun.round(8)
    assert_equal(ma_sun, Eot.new.ma.round(8))
  end

  frac_cent = (Eot.new.ajd - Eot::DJ00) / Eot::DJC
  it "expected #{frac_cent.round(9)} from @ta" do
    frac_cent = (Eot.new.ajd - Eot::DJ00) / Eot::DJC
    assert_equal(frac_cent.round(9), Eot.new.ta.round(9))
    assert_equal(frac_cent.round(9), Eot.new.t.round(9))
  end
  
  it "expected #{addr} from Eot.new.addr" do
    assert_equal(addr,  Eot.new.addr)
  end

end
