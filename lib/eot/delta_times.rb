
# class Eot file = delta_times.rb
# methods converting delta angles to time
class Eot
  # From delta_times.rb:
  # Uses @ajd attribute
  # Returns Oblique component of EOT in decimal minutes time
  def time_delta_oblique
    (delta_oblique * R2D * 4.0).to_f.round(12)
  end

  # From delta_times.rb:
  # Uses @ajd attribute
  # Returns Orbit component of EOT in decimal minutes time
  def time_delta_orbit
    (delta_orbit * R2D * 4.0).to_f.round(12)
  end
end
