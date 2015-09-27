#include "helio.h"

double apparent_lon(double t)
{
  return iauAnp(fmod(true_lon(t) - 
           0.00569 * 0.017453292519943295769236907684886 - 
           0.00478 * 0.017453292519943295769236907684886 * 
           sin(iauFaom03(t)), 57.295779513082320876798154814105));
}

double cos_al_sun(double t) 
{
  return cos(apparent_lon(t));
}

double sin_al_sun(double t) 
{
  return sin(apparent_lon(t));
}

/* Eccentricity of Earth orbit */
double eoe(double t)
{
  return (0.016708617 + t * (-0.000042037 + t *  -0.0000001235)); 
}

double eoc(double t)
{             
  double a1, a2, a3, a4, a5, s1, s2, s3, s4, s5, e;
  double ma = iauFalp03(t);
  e   = eoe(t);  
  s1  = sin( 1.0 * ma);
  s2  = sin( 2.0 * ma);
  s3  = sin( 3.0 * ma);
  s4  = sin( 4.0 * ma);
  s5  = sin( 5.0 * ma);
  a1  = s1 * 2;
  a2  = s2 * 5.0/4.0;
  a3  = s3 * 13.0/12.0 - s1 * 1.0/4.0;
  a4  = s4 * 103.0/96.0 - s2 * 11.0/24.0;
  a5  = s5 * 1097.0/960.0 + s1 * 5.0/96.0 - s3 * 43.0/64.0;

  return e * (a1 + e * (a2 + e * (a3 + e * (a4 + e * a5))));
}

double mean_anomaly(double t)
{
  return iauFalp03(t);
}

/* Mean geocentric longitude of the Sun */
double mean_lon(double t)
{
  return fmod(      280.4664567    +
     t * (        36000.76982779   +
     t * (            0.0003032028 +
     t * (   1.0/499310.0          +
     t * (  1.0/-152990.0          +
     t * (1.0/-19880000.0 ) ) ) ) ), 360.0 ) * 0.017453292519943295769236907684886;
}

double mean_obliquity(double t)
{
  return iauObl06(t * 36525 + 2451545.0, 0);
}

double omega(double t)
{
  return iauFaom03(t);
}

double right_ascension(double t)
{
  double y0 = sin(apparent_lon(t)) * cos_to_earth(t);
  return iauAnp(DPI + atan2(-y0, -cos_al_sun(t)));
}

double sun(double zenith, double t, double lat)
{
  double cos1 = cosZ(zenith);
  double sin2 = sin_dec_sun(t);
  double sin3 = sin_lat(lat);
  double cos2 = cos_dec_sun(t);
  double cos3 = cos_lat(lat);
  double top  = cos1 - sin2 * sin3;
  double bot  = cos2 * cos3;
  double ca   = top / bot;
  double c;
  c = (ca > 1.0 || ca < -1.0) ? 1.0: ca;    
  return acos(c);
}

double sun_dec(double t) 
{
  return asin(sin_to_earth(t) * sin_al_sun(t));
}

double cos_dec_sun(double t) 
{
  return cos(sun_dec(t));
} 

double sin_dec_sun(double t) 
{
  return sin(sun_dec(t));
}  

double true_anomaly(double t)
{
  return iauAnp(eoc(t) + mean_anomaly(t));
}

double true_lon(double t)
{
  return fmod( mean_lon(t) + eoc(t), 57.295779513082320876798154814105);
}

double cos_tl_sun(double t) 
{
  return cos(true_lon(t));
}

double sin_tl_sun(double t) 
{
  return sin(true_lon(t));
}       

double true_obl(double t)
{
  double dp, de;
  double fj2 = -2.7774e-6 * t;
  iauNut06a(t * 36525 + 2451545.0, 0, &dp, &de);
  return mean_obliquity(t) - de + de * fj2;
}

double cos_to_earth(double t)
{
  return cos(true_obl(t));
}

double sin_to_earth(double t) 
{
  return sin(true_obl(t));
}

double cosZ(double zenith)
{
  return cos(zenith * 0.017453292519943295769236907684886);
}

double cos_lat(double lat) 
{
  return cos(lat * 0.017453292519943295769236907684886);
}

double sin_lat(double lat) 
{
  return sin(lat * 0.017453292519943295769236907684886);
}                                   


//                                                       
