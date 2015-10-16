# class Eot file = time_displays.rb
# methods for time displays

class Eot

  # From time_displays.rb
  # String for time now
  def show_now(now = now(Time.now.utc))
    show_minutes(now)
  end
 
  # From time_displays.rb
  # String format conversion of jd to date
  def jd_to_date
    jd = check_jd_zero(jd)
    Date.jd(@jd).to_s
  end

end
