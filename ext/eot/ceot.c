#include "ceot.h"


double mlSun(double t)
{
  double a;

  /* Mean geocentric longitude of the Sun */
  a = fmod(      280.4664567    +
  t * (        36000.76982779   +
  t * (            0.0003032028 +
  t * (   1.0/499310.0          +
  t * (  1.0/-152990.0          +
  t * (1.0/-19880000.0 ) ) ) ) ), 360.0 ) * 0.017453292519943295769236907684886;

  return a;
}

double eoe(double t)
{
  double e;

  /* Eccentricity of Earth orbit */
  e = (0.016708617   +
       t * (-0.000042037 +
       t * -0.0000001235));

  return e; 
}

double eqc(double ma, double t)
{             
  double a, a1, a2, a3, a4, a5, s1, s2, s3, s4, s5, e;
  e   = eoe(t);  
  s1  = sin( 1.0 * ma );
  s2  = sin( 2.0 * ma );
  s3  = sin( 3.0 * ma );
  s4  = sin( 4.0 * ma );
  s5  = sin( 5.0 * ma );
  a1  = s1 * 2;
  a2  = s2 * 5.0/4.0;
  a3  = s3 * 13.0/12.0 - s1 * 1.0/4.0;
  a4  = s4 * 103.0/96.0 - s2 * 11.0/24.0;
  a5  = s5 * 1097.0/960.0 + s1 * 5.0/96.0 - s3 * 43.0/64.0;
  /* Equation of Center */
  //a =  s1 * (e  *    2.0      - e3 * 1.0/4.0 + e5 *  5.0/96.0) +
  //     s2 * (e2 *    5.0/4.0  - 0.0          - e4 * 11.0/24.0) + 
  //     s3 * (e3 *   13.0/12.0 - 0.0          - e5 * 43.0/64.0) +
  //     s4 *  e4 *  103.0/96.0                                  +
  //     s5 *  e5 * 1097.0/960.0; 
  a = e * (a1 + e * (a2 + e * (a3 + e * (a4 + e * a5))));
  return a;
}

double tlSun(double ma, double t)
{
  double a;

  a = fmod( mlSun(t) + eqc(ma, t), 57.295779513082320876798154814105);

  return a;
}

double alSun(double ma, double t, double o)
{
  double a;

  a = fmod(tlSun(ma, t) - 
           0.00569 * 0.017453292519943295769236907684886 - 
           0.00478 * 0.017453292519943295769236907684886 * 
           sin(o), 57.295779513082320876798154814105);

  return a;
}

double cosZ(double zenith)
{

  double a;

  a = cos(zenith * 0.017453292519943295769236907684886);

  return a;
}                              
