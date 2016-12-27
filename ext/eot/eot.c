#include "ruby.h"
// #include "ceot.h"
#ifndef PI
  #define PI        3.1415926535897932384
#endif

#ifndef DBL2NUM
# define DBL2NUM(dbl) rb_float_new(dbl)
#endif
/* Some conversion factors between radians and degrees */
#define R2D ( 180.0 / PI )
#define D2R ( PI / 180.0 )

#define M2PI M_PI * 2
#define INV24 1.0 / 24.0
/* 1.1.1970 = JD 2440587.5 */
#define EJD (double) 2440587.5
#define DJ00 (double) 2451545.0
#define days_since_2000_Jan_0(y, m, d) \
(int) 367 * y - (int)(7 * (y + (int)((m + 9) / 12)) / 4) + (int)((275 * m) / 9) + d - 730531.5

static ID id_status;
static ID id_push;
static ID id_time;
/*
C extension
*/
static VALUE
t_init(VALUE self)
{
  return self;
}
/*
C extension
*/
static VALUE
func_jc(VALUE self, VALUE vjd) {
  double jd = NUM2DBL(vjd);
  double t = (jd - DJ00) / 36525.0;
  return DBL2NUM(t);
}
/*
C extension
*/
static VALUE
func_mu(VALUE self, VALUE vjd) {
  double t = NUM2DBL(func_jc(self, vjd));
  double ma_sun =
      fmod(           357.52910918     +
      t * (         35999.05029113889  +
      t * (     1.0/-6507.592190889371 +
      t * (   1.0/26470588.235294115   +
      t * ( 1.0/-313315926.8929504
            ) ) ) ), 360.0 ) * D2R;
  return DBL2NUM(ma_sun);
}
/*
C extension
*/
static VALUE
func_eoe(VALUE self, VALUE vjd) {
  double t = NUM2DBL(func_jc(self, vjd));
  double eoe = 0.016708617 + t * (-0.000042037 + t *  -0.0000001235);
  return DBL2NUM(eoe);
}
/*
C extension
*/
static VALUE
func_eqc(VALUE self, VALUE vjd) {
  double eqc, a1, a2, a3, a4, a5;
  double ma, e, s1, s2, s3, s4, s5;
  ma = NUM2DBL(func_mu(self, vjd));
  e = NUM2DBL(func_eoe(self, vjd));
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
  eqc = e * (a1 + e * (a2 + e * (a3 + e * (a4 + e * a5))));
  return DBL2NUM(eqc);
}
/*
C extension
*/
static VALUE
func_ta(VALUE self, VALUE vjd) {
  double ta;
  double ma = NUM2DBL(func_mu(self, vjd));
  double eqc = NUM2DBL(func_eqc(self, vjd));
  ta = fmod( ma + eqc, M2PI);
  if (ta < 0) ta += M2PI;
  return DBL2NUM(ta);
}
/*
C extension
*/
static VALUE
func_ml(VALUE self, VALUE vjd) {
  double t = NUM2DBL(func_jc(self, vjd));
  double ml_sun =
  fmod(          280.4664567    +
  t * (        36000.76982779   +
  t * (            0.0003032028 +
  t * (   1.0/499310.0          +
  t * (  1.0/-152990.0          +
  t * (1.0/-19880000.0
    ) ) ) ) ), 360.0 ) * D2R;
  return DBL2NUM(ml_sun);
}
/*
C extension
*/
static VALUE
func_ea(VALUE self, VALUE vjd)
{
  double ve =
  NUM2DBL(func_eoe(self, vjd));
  double vml =
  NUM2DBL(func_ml(self, vjd));
  double vea =
  vml + ve * sin(vml) * (1.0 + ve * cos(vml));
  return DBL2NUM(vea);
}
/*
C extension
*/
static VALUE
func_ooe(VALUE self, VALUE vjd)
{
  double t = NUM2DBL(func_jc(self, vjd));
  double vooe =
  (23.439279444444445 - 3.5600437295611834e-07 * t) * D2R;
  return DBL2NUM(vooe);
}
/*
C extension
*/
static VALUE
func_lp(VALUE self, VALUE vjd)
{
  double t = NUM2DBL(func_jc(self, vjd));
  double vlop =
  fmod(
    (282.9404 +
     1.720042994 * t
    ) * D2R, M2PI);
  return DBL2NUM(vlop);
}
/*
C extension
*/
static VALUE
func_tl(VALUE self, VALUE vjd) {
  double tl;
  double ml = NUM2DBL(func_ml(self, vjd));
  double eqc = NUM2DBL(func_eqc(self, vjd));
  tl = fmod( ml + eqc, M2PI);
  if (tl < 0) tl += M2PI;
  return DBL2NUM(tl);
}
/*
C extension
*/
static VALUE
func_tl2(VALUE self, VALUE vjd)
{
  double vta =
  NUM2DBL(func_ta(self, vjd));
  double vlop =
  NUM2DBL(func_lp(self, vjd));
  double vtl =
  fmod(vta + vlop, M2PI);
  return DBL2NUM(vtl);
}
/*
C extension
*/
static VALUE
func_xv(VALUE self, VALUE vjd)
{
  double vea =
  NUM2DBL(func_ea(self, vjd));
  double ve =
  NUM2DBL(func_eoe(self, vjd));
  double vxv = cos(vea) - ve;
  return DBL2NUM(vxv);
}
/*
C extension
*/
static VALUE
func_yv(VALUE self, VALUE vjd)
{
  double vea =
  NUM2DBL(func_ea(self, vjd));
  double ve =
  NUM2DBL(func_eoe(self, vjd));
  double vyv =
  sqrt(1.0 - ve * ve) * sin(vea);
  return DBL2NUM(vyv);
}
/*
C extension
*/
static VALUE
func_rv(VALUE self, VALUE vjd)
{
  double vxv =
  NUM2DBL(func_xv(self, vjd));
  double vyv =
  NUM2DBL(func_yv(self, vjd));
  double vrv =
  sqrt(vxv * vxv + vyv * vyv);
  return DBL2NUM(vrv);
}
/*
C extension
*/
static VALUE
func_ecliptic_x(VALUE self, VALUE vjd)
{
  double vrv =
  NUM2DBL(func_rv(self, vjd));
  double vtl =
  NUM2DBL(func_tl2(self, vjd));
  double vex = vrv * cos(vtl);
  return DBL2NUM(vex);
}
/*
C extension
*/
static VALUE
func_ecliptic_y(VALUE self, VALUE vjd)
{
  double vrv =
  NUM2DBL(func_rv(self, vjd));
  double vtl =
  NUM2DBL(func_tl2(self, vjd));
  double vey = vrv * sin(vtl);
  return DBL2NUM(vey);
}
/*
C extension
*/
static VALUE
func_ra(VALUE self, VALUE vjd)
{
  double vex =
  NUM2DBL(func_ecliptic_x(self, vjd));
  double vey =
  NUM2DBL(func_ecliptic_y(self, vjd));
  double vooe =
  NUM2DBL(func_ooe(self, vjd));
  double vra =
  fmod(atan2(vey * cos(vooe), vex) + M2PI, M2PI);
  return DBL2NUM(vra * R2D / 15.0);
}
/*
C extension
*/
static VALUE
func_dec(VALUE self, VALUE vjd)
{
  double vex =
  NUM2DBL(func_ecliptic_x(self, vjd));
  double vey =
  NUM2DBL(func_ecliptic_y(self, vjd));
  double vooe =
  NUM2DBL(func_ooe(self, vjd));
  double ver = sqrt(vex * vex + vey * vey);
  double vz = vey * sin(vooe);
  double vdec = atan2(vz, ver);
  return DBL2NUM(vdec);
}
/*
C extension
*/
static VALUE
func_sidetime(VALUE self, VALUE vjd)
{
  double ma = NUM2DBL(func_mu(self, vjd));
  double lp = NUM2DBL(func_lp(self, vjd));
  double vst =
  fmod(PI + lp + ma, M2PI);
  return DBL2NUM(vst / 0.2617994);
}
/*
C extension
*/
static VALUE
func_local_sidetime(VALUE self, VALUE vjd, VALUE vlon)
{
  double vst = NUM2DBL(func_sidetime(self, vjd));
  double vlst = NUM2DBL(vlon) / 15.0 + 12.0 + vst;
  return DBL2NUM(fmod(vlst, 24.0));
}
/*
C extension
*/
static VALUE
func_dlt(VALUE self, VALUE vd, VALUE vlat)
{
  double vsin_alt = sin(-0.8333 * D2R);
  double vlat_r = NUM2DBL(vlat) * D2R;
  double vcos_lat = cos(vlat_r);
  double vsin_lat = sin(vlat_r);
  double vooe =
  NUM2DBL(func_ooe(self, vd));
  double vtl =
  NUM2DBL(func_tl(self, vd));
  double vsin_dec = sin(vooe) * sin(vtl);
  double vcos_dec =
  sqrt( 1.0 - vsin_dec * vsin_dec );
  double vdl =
  acos(
    (vsin_alt - vsin_dec * vsin_lat) /
    (vcos_dec * vcos_lat));
  double vdla = vdl * R2D;
  double vdlt = vdla / 15.0 * 2.0;
  return DBL2NUM(vdlt);
}
/*
C extension
*/
static VALUE
func_diurnal_arc(VALUE self, VALUE vjd, VALUE vlat)
{
  double dlt = NUM2DBL(func_dlt(self, vjd, vlat));
  double da = dlt / 2.0;
  return DBL2NUM(da);
}
/*
C extension
*/
static VALUE
func_t_south(VALUE self, VALUE vjd, VALUE vlon)
{
  double lst = NUM2DBL(func_local_sidetime(self, vjd, vlon));
  double ra = NUM2DBL(func_ra(self, vjd));
  double vx = lst - ra;
  double vt = vx - 24.0 * floor(vx * INV24 + 0.5);
  return DBL2NUM(12 - vt);
}
/*
C extension
*/
static VALUE
func_t_rise(VALUE self, VALUE vjd, VALUE vlon, VALUE vlat)
{
  double ts = NUM2DBL(func_t_south(self, vjd, vlon));
  double da = NUM2DBL(func_diurnal_arc(self, vjd, vlat));
  return DBL2NUM(ts - da);
}
/*
C extension
*/
static VALUE
func_t_set(VALUE self, VALUE vjd, VALUE vlon, VALUE vlat)
{
  double ts = NUM2DBL(func_t_south(self, vjd, vlon));
  double da = NUM2DBL(func_diurnal_arc(self, vjd, vlat));
  return DBL2NUM(ts + da);
}
/*
C extension
*/
static VALUE
func_t_mid_day(VALUE self, VALUE vjd, VALUE vlon, VALUE vlat)
{
  double tr = NUM2DBL(func_t_rise(self, vjd, vlon, vlat));
  double ts = NUM2DBL(func_t_set(self, vjd, vlon, vlat));
  return DBL2NUM((tr + ts) / 2.0);
}
/*
C extension
*/
// static VALUE
// func_al(VALUE self, VALUE vjd) {
//   double al, fo;
//   double tl = NUM2DBL(func_tl(self, vjd));
//   double t = NUM2DBL(func_jc(self, vjd));
//   fo = faom(t);
//   al =
//   fmod(tl -
//        0.00569 * D2R -
//        0.00478 * D2R * sin(fo), M2PI);
//   return DBL2NUM(al);
// }
/*
C extension
*/
// static VALUE
// func_et(VALUE self, VALUE vt, VALUE vctoe) {
//   double ec, al, ra;
//   ec = eqc(t);
//   al = al_sun(t);
//   ra = ra_sun(t, cos_to_earth(to_earth));
//   return -ec + al - ra;
//   return DBL2NUM(eot(NUM2DBL(vt), NUM2DBL(vctoe)));
// }
/*
C extension
*/
// static VALUE
// func_cosZ(VALUE self, VALUE vz) {
//   cos(zenith * D2R);
//   return DBL2NUM(cosZ(NUM2DBL(vz)));
// }
/*
C extension
*/
// static VALUE
// func_cos_al_sun(VALUE self, VALUE vt) {
//   cos(al_sun(t));
//   return DBL2NUM(cos_al_sun(NUM2DBL(vt)));
// }
/*
C extension
*/
// static VALUE
// func_cos_dec_sun(VALUE self, VALUE vds) {
//   cos(dec_sun);
//   return DBL2NUM(cos_dec_sun(NUM2DBL(vds)));
// }
/*
C extension
*/
// static VALUE
// func_cos_tl_sun(VALUE self, VALUE vt) {
//   cos(tl_sun(t));
//   return DBL2NUM(cos_al_sun(NUM2DBL(vt)));
// }
/*
C extension
*/
// static VALUE
// func_cos_to_earth(VALUE self, VALUE vtoe) {
//   cos(to_earth);
//   return DBL2NUM(cos_to_earth(NUM2DBL(vtoe)));
// }
/*
C extension
*/
// static VALUE
// func_sin_al_sun(VALUE self, VALUE vt) {
//   sin(al_sun(t));
//   return DBL2NUM(sin_al_sun(NUM2DBL(vt)));
// }
/*
C extension
*/
// static VALUE
// func_sin_tl_sun(VALUE self, VALUE vt) {
//   sin(tl_sun(t));
//   return DBL2NUM(sin_tl_sun(NUM2DBL(vt)));
// }
/*
C extension
*/
// static VALUE
// func_sin_to_earth(VALUE self, VALUE vtoe) {
//   sin(to_earth);
//   return DBL2NUM(sin_to_earth(NUM2DBL(vtoe)));
// }
/*
C extension
*/
// static VALUE
// func_sin_dec_sun(VALUE self, VALUE vds) {
//   sin(dec_sun);
//   return DBL2NUM(sin_dec_sun(NUM2DBL(vds)));
// }
/*
C extension
*/
// static VALUE
// func_sin_lat(VALUE self, VALUE vlat) {
//   sin(lat * D2R);
//   return DBL2NUM(sin_lat(NUM2DBL(vlat)));
// }
/*
C extension
*/
// static VALUE
// func_cos_lat(VALUE self, VALUE vlat) {
//   cos(lat * D2R);
//   return DBL2NUM(cos_lat(NUM2DBL(vlat)));
// }
/*
C extension
*/
// static VALUE
// func_sun(VALUE self, VALUE vz, VALUE vds, VALUE vlat) {
//   double top  = cosZ(zenith) - sin_dec_sun(dec_sun) * sin_lat(lat);
//   double bot  = cos_dec_sun(dec_sun) * cos_lat(lat);
//   double ca   = top / bot;
//   double c = (ca > 1.0 || ca < -1.0) ? 1.0: ca;
//   return acos(c);
//   return DBL2NUM(sun(NUM2DBL(vz), NUM2DBL(vds), NUM2DBL(vlat)));
// }
/*
C extension
*/
// static VALUE
// func_dec(VALUE self, VALUE vt, VALUE vtoe) {
//   return  asin(sin_to_earth(to_earth) * sin_al_sun(t));
//   return DBL2NUM(sun_dec(NUM2DBL(vt), NUM2DBL(vtoe)));
// }
/*
C extension
*/
// static VALUE
// func_sun_ra(VALUE self, VALUE vt, VALUE vctoe) {
//   double y0 = sin_al_sun(t) * cos_to_earth(to_earth);
//   return fmod(atan2(-y0, -cos_al_sun(t)) + M_PI, R2D);
//   return DBL2NUM(ra_sun(NUM2DBL(vt), NUM2DBL(vctoe)));
// }
/*
C extension
*/
static VALUE
func_cjd(VALUE self) {
  VALUE obj;
  obj = EJD + time(0) / 86400.0;
  return DBL2NUM(obj);
}
/*
C extension
*/
static VALUE
func_jd_dif(VALUE self, VALUE vy, VALUE vm, VALUE vd) {
  int y = NUM2INT(vy);
  int m = NUM2INT(vm);
  int d = NUM2INT(vd);
  int vjd = days_since_2000_Jan_0(y, m, d + 1);
  return INT2NUM(vjd);
}
/*
C extension
*/
void Init_eot(void)
{
  VALUE cEot = rb_define_class("Eot", rb_cObject);
  id_status = rb_intern("@status");
  rb_define_method(cEot, "initialize", t_init, 0);
  rb_define_method(cEot, "jc_time", func_jc, 1);
  rb_define_method(cEot, "mean_anomaly", func_mu, 1);
  rb_define_method(cEot, "eccentricity", func_eoe, 1);
  rb_define_method(cEot, "equation_of_center", func_eqc, 1);
  rb_define_method(cEot, "true_anomaly", func_ta, 1);
  rb_define_method(cEot, "mean_longitude", func_ml, 1);
  rb_define_method(cEot, "eccentric_anomaly", func_ea, 1);
  rb_define_method(cEot, "obliquity_of_ecliptic", func_ooe, 1);
  rb_define_method(cEot, "longitude_of_perihelion", func_lp, 1);
  rb_define_method(cEot, "true_longitude", func_tl, 1);
  rb_define_method(cEot, "true_longitude2", func_tl2, 1);
  rb_define_method(cEot, "right_ascension", func_ra, 1);
  rb_define_method(cEot, "declination", func_dec, 1);
  rb_define_method(cEot,
  "sidereal_time", func_sidetime, 1);
  rb_define_method(cEot,
  "local_sidereal_time", func_local_sidetime, 2);
  rb_define_method(cEot,
  "dlt", func_dlt, 2);
  rb_define_method(cEot,
  "diurnal_arc", func_diurnal_arc, 2);
  rb_define_method(cEot,
  "t_south", func_t_south, 2);
  rb_define_method(cEot,
  "t_rise", func_t_rise, 3);
  rb_define_method(cEot,
  "t_set", func_t_set, 3);
  rb_define_method(cEot,
  "t_mid_day", func_t_mid_day, 3);
  // rb_define_method(cEot, "apparent_longitude", func_al, 1);
  // rb_define_method(cEot, "cosZ", func_cosZ, 1);
  // rb_define_method(cEot, "cos_al_sun", func_cos_al_sun, 1);
  // rb_define_method(cEot, "cos_dec_sun", func_cos_dec_sun, 1);
  // rb_define_method(cEot, "cos_lat", func_cos_lat, 1);
  // rb_define_method(cEot, "cos_tl_sun", func_cos_tl_sun, 1);
  // rb_define_method(cEot, "cos_to_earth", func_cos_to_earth, 1);
  // rb_define_method(cEot, "et", func_et, 2);
  // rb_define_method(cEot, "sin_al_sun", func_sin_al_sun, 1);
  // rb_define_method(cEot, "sin_dec_sun", func_sin_dec_sun, 1);
  // rb_define_method(cEot, "sin_lat", func_sin_lat, 1);
  // rb_define_method(cEot, "sin_tl_sun", func_sin_tl_sun, 1);
  // rb_define_method(cEot, "sin_to_earth", func_sin_to_earth, 1);
  // rb_define_method(cEot, "sun", func_sun, 3);
  // rb_define_method(cEot, "sun_ra", func_sun_ra, 2);
  rb_define_method(cEot, "jd", func_cjd, 0);
  rb_define_method(cEot, "j2000_dif", func_jd_dif, 3);
  id_push = rb_intern("push");
  id_time = rb_intern("time");
}
