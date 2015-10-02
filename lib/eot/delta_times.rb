# class Eot file = delta_times.rb
# methods converting delta angles to time

class Eot

  # From delta_times.rb:
  # Uses @ajd attribute
  # Returns Oblique component of EOT in decimal minutes time
  def time_delta_oblique
    delta_oblique_jd * 1440.0
  end

  # From delta_times.rb:
  # Uses @ajd attribute
  # Returns Orbit component of EOT in decimal minutes time
  def time_delta_orbit
    delta_orbit_jd * 1440.0
  end

  # From delta_times.rb:
  # Uses @ajd attribute
  # Returns EOT as a float for decimal minutes time
  def time_eot
    delta_total_jd * 1440.0
  end

  
  # From times.rb:
  # sets @ajd to DateTime.now
  # Returns EOT (equation of time) now in decimal minutes form
  def now
    @ajd = DateTime.now.to_time.utc.to_datetime.ajd.to_f
    @t = (@ajd - DJ00) / DJC
    time_eot
  end

end
