#include "ceot.h"

#ifndef CEOT_H_
#define CEOT_H_
#define R2D 57.295779513082320876798154814105
#define D2R 0.017453292519943295769236907684886
#define M2PI M_PI * 2
/* Arcseconds to radians */
#define DAS2R (4.848136811095359935899141e-6)

/* Seconds of time to radians */
#define DS2R (7.272205216643039903848712e-5)

/* Arcseconds in a full circle */
#define TURNAS (1296000.0)
#endif

/* Mean geocentric longitude of the Sun */
double ma_sun(double t)
{
  return
    fmod(           357.52910918     +
    t * (         35999.05029113889  +
    t * (     1.0/-6507.592190889371 +
    t * (   1.0/26470588.235294115   +
    t * ( 1.0/-313315926.8929504
            ) ) ) ), 360.0 ) * D2R;
}

/* Mean geocentric longitude of the Sun */
double ml_sun(double t)
{
  return
    fmod(          280.4664567    +
    t * (        36000.76982779   +
    t * (            0.0003032028 +
    t * (   1.0/499310.0          +
    t * (  1.0/-152990.0          +
    t * (1.0/-19880000.0
        ) ) ) ) ), 360.0 ) * D2R;
}

/* Earth Orbital Eccentricity  */
double eoe(double t)
{
  return (0.016708617 + t * (-0.000042037 + t *  -0.0000001235));
}

double eqc(double t)
{
  double a1, a2, a3, a4, a5;
  double ma, e, s1, s2, s3, s4, s5;
  ma = ma_sun(t);
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
  return e * (a1 + e * (a2 + e * (a3 + e * (a4 + e * a5))));
}

double ta_sun(double t)
{
  double ta;
  ta = fmod( ma_sun(t) + eqc(t), M2PI);
  if (ta < 0) ta += M2PI;

  return ta;
}

double tl_sun(double t)
{
  double tl;

  tl = fmod( ml_sun(t) +
             eqc(t), M2PI);
  if (tl < 0) tl += M2PI;
  return tl;
}

double faom(double t)
{
   return
   fmod(              450160.398036 +
             t * ( - 6962890.5431   +
             t * (         7.4722   +
             t * (         0.007702 +
             t * (       - 0.00005939 ) ) ) ), TURNAS ) * DAS2R;
}

double al_sun(double t)
{
  double al, fo;
  fo = faom(t);
  al = fmod(tl_sun(t) -
            0.00569 * D2R -
            0.00478 * D2R *
            sin(fo), M2PI);
  return al;
}

double ra_sun(double t, double to_earth)
{
  double y0 = sin_al(t) * cos_to_earth(to_earth);
  return fmod(atan2(-y0, -cos_al(t)) + M_PI, R2D);
}

double eot(double t, double to_earth)
{
  double ec, al, ra;
  ec = eqc(t);
  al = al_sun(t);
  ra = ra_sun(t, cos_to_earth(to_earth));
  return -ec + al - ra;
}

double cosZ(double zenith)
{
  return cos(zenith * D2R);
}

double cos_al(double t)
{
  return cos(al_sun(t));
}

double cos_dec(double dec_sun)
{
  return cos(dec_sun);
}

double cos_lat(double lat)
{
  return cos(lat * D2R);
}

double cos_tl(double t)
{
  return cos(tl_sun(t));
}

double cos_to_earth(double to_earth)
{
  return cos(to_earth);
}

double sin_al(double t)
{
  return sin(al_sun(t));
}

double sin_dec(double dec_sun)
{
  return sin(dec_sun);
}

double sin_lat(double lat)
{
  return sin(lat * D2R);
}

double sin_tl(double t)
{
  return sin(tl_sun(t));
}

double sin_to_earth(double to_earth)
{
  return sin(to_earth);
}

double sun(double zenith, double dec_sun, double lat)
{
  double top  = cosZ(zenith) - sin_dec(dec_sun) * sin_lat(lat);
  double bot  = cos_dec(dec_sun) * cos_lat(lat);
  double ca   = top / bot;
  double c = (ca > 1.0 || ca < -1.0) ? 1.0: ca;
  return acos(c);
}

double sun_dec(double t, double to_earth)
{
  return  asin(sin_to_earth(to_earth) * sin_al(t));
}

//
