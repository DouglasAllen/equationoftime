# init_spec.rb

require File.expand_path('../../test_helper', __FILE__)

describe 'Eot_initialize has set attributes ' do

  it "expected    nil from Eot.new.addr" do
    assert_equal(nil,  Eot.new.addr)
  end

  it "expected #{Date.today.to_s} from Eot.new.date" do
    assert_equal(Date.today.to_s, Eot.new.date)
  end

  it "expected #{Date.today.jd} from Eot.new.jd" do
    assert_equal(Date.today.jd, Eot.new.jd)
  end

  it "expected #{Date.today.ajd} from Eot.new.ajd" do
    assert_equal(Date.today.ajd, Eot.new.ajd)
  end
  
  it "expected    0.0 from Eot.new.latitude" do
    assert_equal(0.0, Eot.new.latitude)
  end
  
  it "expected    0.0 from Eot.new.longitude" do
    assert_equal(0.0, Eot.new.longitude)
  end

  frac_cent = (Eot.new.jd - Eot::DJ00) / Eot::DJC
  it "expected #{frac_cent} from @ta" do
    frac_cent = (Eot.new.jd - Eot::DJ00) / Eot::DJC
    assert_equal(frac_cent, Eot.new.ta)
    assert_equal(frac_cent, Eot.new.t)
  end
  
  it "expected #{Eot.new.ma_sun} from Eot.new.ma" do    
    assert_equal(Eot.new.ma_sun, Eot.new.ma)
  end

end
