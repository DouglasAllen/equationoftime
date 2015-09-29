lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

p date_time = DateTime.now
p time = date_time.to_time
p time_utc = time.utc
p date_time_utc = time_utc.to_datetime
p ajd = date_time_utc.ajd.to_f
p j2000 = Date.parse("2000-01-01").jd
p num = ajd - j2000
p t = num / 36525
p Helio.mean_anomaly(t)
p Helio.mean_longitude(t)
p Helio.mean_anomaly(t) - Helio.mean_longitude(t)
p Helio.mean_obliquity(t)
p Helio.right_ascension(t)
p Helio.true_obliquity(t)
p Helio.delta_psi(t) * 180/Math::PI * 3600.0
p Helio.delta_epsilon(t) * 180/Math::PI * 3600.0
p Helio.a2af(9, Helio.mean_obliquity(t))
p Helio.a2af(9, Helio.true_obliquity(t)) 