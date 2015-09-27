#include "ruby.h"
#include "helio.h"

#ifndef DBL2NUM
# define DBL2NUM(dbl) rb_float_new(dbl)
#endif

VALUE mHelio;
ID id_status;

/*
Apparent longitude of the Sun C extension.

vt = time in julian centuries

*/
VALUE func_apparent_lon(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(apparent_lon(NUM2DBL(vt)));
}
/*
Cosine of the Zenith type C extension.
p1 = zenith angle sent by choice method
*/
VALUE func_cosZ(VALUE klass, VALUE vz) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosZ(NUM2DBL(vz)));
}
/*
Cosine of Apparent Longitude Sun C extension.
p1 = Apparent Longitude Sun see al
*/
VALUE func_cos_al_sun(VALUE klass, VALUE vals) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_al_sun(NUM2DBL(vals)));
}
/*
Cosine of Solar Declination C extension
*/
VALUE func_cos_dec_sun(VALUE klass, VALUE vds) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_dec_sun(NUM2DBL(vds)));
}
/*
C extension
*/
VALUE func_mean_anomaly(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mean_anomaly(NUM2DBL(vt)));
}
/*
C extension
*/
VALUE func_mean_obliquity(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mean_obliquity(NUM2DBL(vt)));
}
/*
C extension
*/
VALUE func_mean_lon(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mean_lon(NUM2DBL(vt)));
}
/*
C extension
*/
VALUE func_eoe(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(eoe(NUM2DBL(vt)));
}
/*
C extension
*/
VALUE func_eoc(VALUE klass, VALUE vt) {
 rb_ivar_set(klass, id_status, INT2FIX(0));
 return DBL2NUM(eoc(NUM2DBL(vt)));  
}
/*
C extension
*/
VALUE func_true_lon(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(true_lon(NUM2DBL(vt)));
}
/*
C extension
*/
VALUE func_cos_tl_sun(VALUE klass, VALUE vtls) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_al_sun(NUM2DBL(vtls)));
}
/*
C extension
*/
VALUE func_cos_to_earth(VALUE klass, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_to_earth(NUM2DBL(vtoe)));
}
/*
C extension
*/
VALUE func_sin_al_sun(VALUE klass, VALUE vals) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_al_sun(NUM2DBL(vals)));
}
/*
C extension
*/
VALUE func_sin_tl_sun(VALUE klass, VALUE vtls) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_al_sun(NUM2DBL(vtls)));
}
/*
C extension
*/
VALUE func_sin_to_earth(VALUE klass, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_to_earth(NUM2DBL(vtoe)));
}
/*
C extension
*/
VALUE func_sin_dec_sun(VALUE klass, VALUE vds) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_dec_sun(NUM2DBL(vds)));
}
/*
C extension
*/
VALUE func_sin_lat(VALUE klass, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_lat(NUM2DBL(vlat)));
}
/*
C extension
*/
VALUE func_cos_lat(VALUE klass, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_lat(NUM2DBL(vlat)));
}
/*
C extension
*/
VALUE func_sun(VALUE klass, VALUE vz, VALUE vds, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sun(NUM2DBL(vz), NUM2DBL(vds), NUM2DBL(vlat)));
}
/*
C extension
*/
VALUE func_sun_dec(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sun_dec(NUM2DBL(vt)));
}
/*
C extension
*/
VALUE func_sun_ra(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(raSun(NUM2DBL(vt)));
}


void
Init_helio(void) {

  VALUE mHelio = rb_define_module("Helio");
  id_status = rb_intern("@status");
  rb_define_module_function(mHelio, "apparent_lon", func_apparent_lon, 1);
  rb_define_module_function(mHelio, "cosZ", func_cosZ, 1);
  rb_define_module_function(mHelio, "cos_al_sun", func_cos_al_sun, 1);
  rb_define_module_function(mHelio, "cos_dec_sun", func_cos_dec_sun, 1);
  rb_define_module_function(mHelio, "cos_lat", func_cos_lat, 1);
  rb_define_module_function(mHelio, "cos_tl_sun", func_cos_tl_sun, 1);
  rb_define_module_function(mHelio, "cos_to_earth", func_cos_to_earth, 1);
  rb_define_module_function(mHelio, "eoe", func_eoe, 1);
  rb_define_module_function(mHelio, "eoc", func_eoc, 1);
  rb_define_module_function(mHelio, "mean_anomaly", func_mean_anomaly, 1);
  rb_define_module_function(mHelio, "mean_obliquity", func_mean_obliquity, 1);
  rb_define_module_function(mHelio, "mean_lon", func_mean_lon, 1); 
  rb_define_module_function(mHelio, "sin_al_sun", func_sin_al_sun, 1);
  rb_define_module_function(mHelio, "sin_dec_sun", func_sin_dec_sun, 1);
  rb_define_module_function(mHelio, "sin_lat", func_sin_lat, 1);
  rb_define_module_function(mHelio, "sin_tl_sun", func_sin_tl_sun, 1);
  rb_define_module_function(mHelio, "sin_to_earth", func_sin_to_earth, 1);
  rb_define_module_function(mHelio, "sun", func_sun, 3); 
  rb_define_module_function(mHelio, "sun_dec", func_sun_dec, 1);
  rb_define_module_function(mHelio, "sun_ra", func_sun_ra, 1);
  rb_define_module_function(mHelio, "true_lon", func_true_lon, 1);
  
}
