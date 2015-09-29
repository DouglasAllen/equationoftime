#include "helio.h"

double apparent_longitude(double t)
{
  return iauAnp(fmod(true_longitude(t) - 
           0.00569 * 0.017453292519943295769236907684886 - 
           0.00478 * 0.017453292519943295769236907684886 * 
           sin(iauFaom03(t)), 57.295779513082320876798154814105));
}

double cosine_apparent_longitude(double t) 
{
  return cos(apparent_longitude(t));
}

double sine_apparent_longitude(double t) 
{
  return sin(apparent_longitude(t));
}

double delta_epsilon(double t)
{
  double dp, de;
  iauNut06a(t * 36525 + 2451545.0, 0, &dp, &de);  
  return de; 
}

double delta_psi(double t)
{
  double dp, de;
  iauNut06a(t * 36525 + 2451545.0, 0, &dp, &de);  
  return dp; 
}

/* Eccentricity of Earth orbit */
double earth_orbital_eccentricity(double t)
{
  return (0.016708617 + t * (-0.000042037 + t *  -0.0000001235)); 
}

double equation_of_center(double t)
{             
  double a1, a2, a3, a4, a5, s1, s2, s3, s4, s5, e;
  double ma = iauFalp03(t);
  e   = earth_orbital_eccentricity(t);  
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
double mean_longitude(double t)
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
  double y0 = sine_apparent_longitude(t) * cosine_true_obliquity(t);
  return iauAnp(DPI + atan2(-y0, -cosine_apparent_longitude(t)));
}

double horizon_angle(double zenith, double t, double latitude)
{
  double cos1 = cosine_zenith(zenith);
  double sin2 = sine_declination(t);
  double sin3 = sine_latitude(latitude);
  double cos2 = cosine_declination(t);
  double cos3 = cosine_latitude(latitude);
  double top  = cos1 - sin2 * sin3;
  double bot  = cos2 * cos3;
  double ca   = top / bot;
  double c;
  c = (ca > 1.0 || ca < -1.0) ? 1.0: ca;    
  return acos(c);
}

double declination(double t) 
{
  return asin(sine_true_obliquity(t) * sine_apparent_longitude(t));
}

double cosine_declination(double t) 
{
  return cos(declination(t));
} 

double sine_declination(double t) 
{
  return sin(declination(t));
}  

double true_anomaly(double t)
{
  return iauAnp(equation_of_center(t) + mean_anomaly(t));
}

double true_longitude(double t)
{
  return fmod( mean_longitude(t) + equation_of_center(t), 57.295779513082320876798154814105);
}

double cosine_true_longitude(double t) 
{
  return cos(true_longitude(t));
}

double sine_true_longitude(double t) 
{
  return sin(true_longitude(t));
}       

double true_obliquity(double t)
{
  double de = delta_epsilon(t);
  double fj2 = -2.7774e-6 * t;  
  return mean_obliquity(t) + (de + de * fj2);
}

double cosine_true_obliquity(double t)
{
  return cos(true_obliquity(t));
}

double sine_true_obliquity(double t) 
{
  return sin(true_obliquity(t));
}

double cosine_zenith(double zenith)
{
  return cos(zenith * 0.017453292519943295769236907684886);
}

double cosine_latitude(double latitude) 
{
  return cos(latitude * 0.017453292519943295769236907684886);
}

double sine_latitude(double latitude) 
{
  return sin(latitude * 0.017453292519943295769236907684886);
}                                   

double mean_longitude_aries(double t)
{
  double dt = 68.184;
  double ajd = t * 36525 + 2451545.0;
  double ttajd = ajd + dt / 86400.0;
  return iauGmst06(ajd, 0, ttajd, 0);
}

double true_longitude_aries(double t)
{
  double dt = 68.184;
  double ajd = t * 36525 + 2451545.0;
  double ttajd = ajd + dt / 86400.0;
  return iauGmst06(ajd, 0, ttajd, 0);
  return iauGst06a(ajd, 0, ttajd, 0);
}

double earth_rotation_angle(double t)
{
  return iauEra00(t * 36525 + 2451545, 0);
}

double equation_of_equinox(double t)
{
  return iauEe06a(t * 36525 + 2451545, 0.0);
}

//                                                       
