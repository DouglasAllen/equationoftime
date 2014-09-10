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
  double a, e, e2, e3, e4, e5;
  e   = eoe(t);
  e2  = pow(e, 2);
  e3  = pow(e, 3);
  e4  = pow(e, 4);
  e5  = pow(e, 5);

  /* Equation of Center */
  a = sin( 1.0 * ma ) * (e  *    2.0      - e3 * 1.0/4.0 + e5 *  5.0/96.0) +
      sin( 2.0 * ma ) * (e2 *    5.0/4.0  - 0.0          - e4 * 11.0/24.0) + 
      sin( 3.0 * ma ) * (e3 *   13.0/12.0 - 0.0          - e5 * 43.0/64.0) +
      sin( 4.0 * ma ) *  e4 *  103.0/96.0                                  +
      sin( 5.0 * ma ) *  e5 * 1097.0/960.0; 

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
