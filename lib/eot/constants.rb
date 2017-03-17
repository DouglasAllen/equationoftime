

require 'date'
# class Eot file = constants.rb:
# has the constants used and more
#
class Eot
  #
  # ===
  #
  #   in lib/eot/constants.rb
  #   Arc seconds in a degree
  #   ARCSEC      = 3_600.0
  #

  ARCSEC      = 3_600.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Arc seconds in a degree
  #   ASD         = 3_600.0
  #

  ASD         = 3_600.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Arc seconds in an hour
  #   ASH         = 240.0
  #

  ASH         = 240.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Light time for 1 au (s)
  #   AULT        = 499.004782
  #

  AULT        = 499.004782

  # ===
  #
  #   in lib/eot/constants.rb
  #   Speed of light (m/s)
  #   CMPS        = 299_792_458.0
  #

  CMPS        = 299_792_458.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Default date string
  #   D2000       = '2000-01-01'.freeze
  #

  D2000       = '2000-01-01'.freeze

  # ===
  #
  #   in lib/eot/constants.rb
  #   Pi * 2
  #   from desktop calculator
  #   D2PI        = 6.283185307179586476925287
  #

  D2PI        = 6.283185307179586476925287

  # ===
  #
  #   in lib/eot/constants.rb
  #   Degree arc seconds to radians
  #   DAS2R       = 4.8481368110953599358991410235795e-6
  #

  DAS2R       = 4.8481368110953599358991410235795e-6

  # ===
  #
  #   in lib/eot/constants.rb
  #   Astronomical unit (m)
  #   DAU         = 149_597_870e3
  #

  DAU         = 149_597_870e3

  # ===
  #
  #   in lib/eot/constants.rb
  #   Hours in a day
  #   DAY_HOURS   = 24.0
  #

  DAY_HOURS   = 24.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Minutes in a day
  #   DAY_MINUTES = 1_440.0
  #

  DAY_MINUTES = 1_440.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Seconds in a day
  #   DAY_SECONDS = 86_400.0
  #

  DAY_SECONDS = 86_400.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Seconds in a day
  #   DAYSEC      = 86_400.0
  #

  DAYSEC      = 86_400.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Micro Seconds in a day
  #   DAY_USECS   = 86_400_000_000.0
  #

  DAY_USECS   = 86_400_000_000.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Speed of light (AU per day)
  #   DC          = DAYSEC / AULT
  #

  DC          = DAYSEC / AULT

  # ===
  #
  #   in lib/eot/constants.rb
  #   Dregrees to radians
  #   A multiplier for conversion
  #   D2R         = 0.017453292519943295769236907684886
  #

  D2R         = 0.017453292519943295769236907684886

  # dint(A) - truncate to nearest whole number towards zero (double)
  #
  #   in lib/eot/constants.rb
  #   not implemented yet
  #
  #   dint(a) = (a) <0.0 ? ceil(a) : floor(a)
  #

  # dnint(A) - round to nearest whole number (double)
  #
  #   in lib/eot/constants.rb
  #   not implemented yet
  #
  #   dnint(A) = ((A)<0.0?ceil((A)-0.5):floor((A)+0.5))
  #

  # dsign(A,B) - magnitude of A with sign of B (double)
  #
  #   in lib/eot/constants.rb
  #   not implemented yet
  #
  #   dsign(A,B) = ((B)<0.0?-fabs(A):fabs(A))
  #

  # ===
  #
  #   in lib/eot/constants.rb
  #   Reference epoch (J2000.0), Julian Date
  #   Default Julian Number = 2451545.0
  #   DJ00        = 2_451_545.0
  #

  DJ00        = 2_451_545.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Days in Julian century
  #   DJC         = 36_525.0
  #

  DJC         = 36_525.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Days per Julian millennium
  #   DJM         = 365_250.0
  #

  DJM         = 365_250.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Julian Date of Modified Julian Date zero
  #   1858, 11, 17, 0.0 midnight start of calendar reform
  #   Removed from Julian Date to get Modified Julian Date
  #   DJM0        = 2_400_000.5
  #

  DJM0        = 2_400_000.5

  # ===
  #
  #   in lib/eot/constants.rb
  #   Reference epoch (J2000.0), Modified Julian Date
  #   DJM00       = 51_544.5
  #

  DJM00       = 51_544.5

  # ===
  #
  #   in lib/eot/constants.rb
  #   1977 Jan 1.0 as MJD
  #   DJM77       = 43_144.0
  #

  DJM77       = 43_144.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Days in Julian year
  #   DJY         = 365.25
  #

  DJY         = 365.25

  # ===
  #
  #   in lib/eot/constants.rb
  #   Milli-arc-seconds to radians
  #   DMAS2R      = DAS2R / 1e3
  #

  DMAS2R      = DAS2R / 1e3

  # ===
  #
  #   in lib/eot/constants.rb
  #   Radians to arc seconds
  #   DR2AS       = 206_264.8062470963551564734
  #

  DR2AS       = 206_264.8062470963551564734

  # ===
  #
  #   in lib/eot/constants.rb
  #   Seconds of time to radians
  #   DS2R        = 7.272205216643039903848712e-5
  #

  DS2R        = 7.272205216643039903848712e-5

  # ===
  #
  #   in lib/eot/constants.rb
  #   Default DateTime
  #   DT2000      = DateTime.new( 2000, 01, 01, 12, 00, 00, "+00:00" )
  #

  DT2000      = DateTime.new(2000, 0o1, 0o1, 12, 0o0, 0o0, '+00:00')

  # ===
  #
  #   in lib/eot/constants.rb
  #   arc seconds degrees to radians
  #   DTR         = PI / 180.0 / ARCSEC
  #   DTR         = 4.8481368110953599358991410235795e-6 # from calculator
  #

  DTR         = Math::PI / 180.0 / ARCSEC

  # ===
  #
  #   in lib/eot/constants.rb
  #   Length of tropical year B1900 (days)
  #   DTY         = 365.242198781
  #

  DTY         = 365.242198781

  # ===
  #
  #   in lib/eot/constants.rb
  #   L_G = 1 - d(TT)/d(TCG)
  #   ELG         = 6.969290134e-10
  #

  ELG         = 6.969290134e-10

  # ===
  #
  #   in lib/eot/constants.rb
  #   L_B = 1 - d(TDB)/d(TCB)
  #   ELB         = 1.550519768e-8
  #

  ELB         = 1.550519768e-8

  # ===
  #
  #   in lib/eot/constants.rb
  #   not implemented yet
  #   max(A,B) - larger (most +ve) of two numbers (generic)
  #   gmax(A,B) = (((A)>(B))?(A):(B))
  #

  # ===
  #
  #   in lib/eot/constants.rb
  #   not implemented yet
  #   min(A,B) - smaller (least +ve) of two numbers (generic)
  #   gmin(A,B) = (((A)<(B))?(A):(B))
  #

  # ===
  #
  #   in lib/eot/constants.rb
  #   Reference epoch (J2000.0), Julian Date
  #   Default Julian Number
  #   J2000       = 2_451_545.0
  #

  J2000       = 2_451_545.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   Julian Date of Modified Julian Date zero
  #   1858, 11, 17, 0.0 midnight start of calendar reform
  #   MJD0        = 2_400_000.5
  #

  MJD0        = 2_400_000.5

  # ===
  #
  #   in lib/eot/constants.rb
  #   from desktop calculator
  #   PI          = 3.1415926535897932384626433832795
  #

  PI          = 3.1415926535897932384626433832795

  # ===
  #
  #   in lib/eot/constants.rb
  #   2 * Pi from Math module
  #   P2          = Math::PI * 2.0

  P2          = Math::PI * 2.0

  # ===
  #
  #   in lib/eot/constants.rb
  #   from desktop calculator
  #   A multiplier for conversion
  #   Radians to degrees
  #   R2D         = 57.295779513082320876798154814105
  #

  R2D         = 57.295779513082320876798154814105

  # ===
  #
  #   in lib/eot/constants.rb
  #   from desktop calculator Sidereal minutes
  #   4.0 / 1.0027379093507953456536618754278
  #   probably 3.989 would be close enough because
  #   it's not that constant anyway
  #   SM          = 4.0 / 1.0027379093507953456536618754278
  #

  SM          = 3.989078265316336

  # ===
  #
  #   in lib/eot/constants.rb
  #   Schwarzschild radius of the Sun (au)
  #   2 * 1.32712440041e20 / (2.99792458e8)^2 / 1.49597870700e11
  #   SRS         = 1.97412574336e-8
  #

  SRS         = 1.97412574336e-8

  # ===
  #
  #   in lib/eot/constants.rb
  #   TDB (s) at TAI 1977/1/1.0
  #   TDB0        = -6.55e-5
  #

  TDB0        = -6.55e-5

  # ===
  #
  #   in lib/eot/constants.rb
  #   TT minus TAI (s)
  #   TTMTAI      = 32.184
  #

  TTMTAI      = 32.184

  # ===
  #
  #   in lib/eot/constants.rb
  #   Arcseconds in a full circle
  #   TURNAS      = 1_296_000.0
  #

  TURNAS      = 1_296_000.0
end

if __FILE__ == $PROGRAM_NAME

  gem 'minitest'
  require 'minitest/autorun'
  spec = File.expand_path('../../../test/eot/', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'constants_spec'

end
