lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

puts "DateTime.now                                    =
 #{date_time = DateTime.now}"
puts "date_time.to_time                               =
 #{time = date_time.to_time}"
puts "time.utc                                        = #{time_utc = time.utc}"
puts "time.utc.to_datetime                            =
 #{date_time_utc = time_utc.to_datetime}"
puts "date_time_utc.ajd.to_f                          =
 #{ajd = date_time_utc.ajd.to_f}"
puts "Date.parse('2000-01-01').jd                     =
#{j2000 = Date.parse('2000-01-01').jd}"
puts "ajd - j2000                                     = #{num = ajd - j2000}"
puts "num / 36525                                     =
 #{t = num / 36_525}"
puts "Helio.mean_anomaly(t)                           =
 #{Helio.mean_anomaly(t)} radians"
puts "Helio.mean_anomaly(t)                           =
 #{Helio.mean_anomaly(t) * 180 / Math::PI} degrees"
puts "Helio.mean_longitude(t)                         =
 #{Helio.mean_longitude(t)} radians"
puts "Helio.mean_longitude(t)                         =
 #{Helio.mean_longitude(t) * 180 / Math::PI} degrees"
puts "Helio.mean_anomaly(t) - Helio.mean_longitude(t) =
 #{Helio.mean_anomaly(t) - Helio.mean_longitude(t)} radians"
puts "Helio.mean_anomaly(t) - Helio.mean_longitude(t) =
 #{(Helio.mean_anomaly(t) -
    Helio.mean_longitude(t)) * 180.0 / Math::PI} degrees"
puts "Helio.true_longitude_aries(t)                   =
 #{Helio.true_longitude_aries(t)} radians"
puts "Helio.true_longitude_aries(t)                   =
 #{Helio.true_longitude_aries(t) * 180 / Math::PI} degrees"

puts "Helio.right_ascension(t)                        =
 #{Helio.right_ascension(t)} radians"

puts "Helio.delta_psi(t) * 180/Math::PI * 3600.0      =
 #{Helio.delta_psi(t) * 180 / Math::PI * 3600.0}"
puts "Helio.delta_epsilon(t) * 180/Math::PI * 3600.0  =
 #{Helio.delta_epsilon(t) * 180 / Math::PI * 3600.0}"
puts "Helio.mean_obliquity(t)                         =
 #{Helio.mean_obliquity(t)} radians"
puts "Helio.a2af(9, Helio.mean_obliquity(t))          =
 #{Helio.a2af(9, Helio.mean_obliquity(t))}"
puts "Helio.true_obliquity(t) = #{Helio.true_obliquity(t)} radians"
puts "Helio.a2af(9, Helio.true_obliquity(t))          =
 #{Helio.a2af(9, Helio.true_obliquity(t))}"
