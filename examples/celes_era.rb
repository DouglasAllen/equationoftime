require 'celes'
require 'date'

t = DateTime.now.to_time.utc.to_datetime

=begin

/* Reference epoch (J2000.0), Julian Date */
#define DJ00 (2451545.0)

/* 2Pi */
#define D2PI (6.283185307179586476925287)

{
   double d1, d2, t, f, theta;

/* Days since fundamental epoch. */
   if (dj1 < dj2) {
      d1 = dj1;
      d2 = dj2;
   } else {
      d1 = dj2;
      d2 = dj1;
   }
   t = d1 + (d2- DJ00);

/* Fractional part of T (days). */
   f = fmod(d1, 1.0) + fmod(d2, 1.0);

/* Earth rotation angle at this UT1. */
   theta = iauAnp(D2PI * (f + 0.7790572732640
                            + 0.00273781191135448 * t));

   return theta;
=end

=begin
/* 2Pi */
#define D2PI (6.283185307179586476925287)
{
   double w;

   w = fmod(a, D2PI);
   if (w < 0) w += D2PI;

   return w;
=end

p era00 = Celes::era00(2400000.5, t.amjd.to_f)
p era00 = Celes::era00(t.amjd.to_f, 2400000.5)
p era00 * 180 / Math::PI
p era00 * 180 / Math::PI / 15.0

p t.amjd.to_f

p t.day_fraction.to_f

p t.day_fraction.to_f * 24

