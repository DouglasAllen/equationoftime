#include "ruby.h"
#include "ceot.h"

#ifndef DBL2NUM
# define DBL2NUM(dbl) rb_float_new(dbl)
#endif

ID id_status;

VALUE func_ml(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mlSun(NUM2DBL(vt)));
}

VALUE func_eoe(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(eoe(NUM2DBL(vt)));
}

VALUE func_eqc(VALUE klass, VALUE vma, VALUE vt) {
 rb_ivar_set(klass, id_status, INT2FIX(0));
 return DBL2NUM(eqc(NUM2DBL(vma), NUM2DBL(vt)));  
}

VALUE func_tl(VALUE klass, VALUE vma, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(tlSun(NUM2DBL(vma), NUM2DBL(vt)));
}

VALUE func_al(VALUE klass, VALUE vma, VALUE vt, VALUE vo) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(alSun(NUM2DBL(vma), NUM2DBL(vt), NUM2DBL(vo)));
}

VALUE func_cosZ(VALUE klass, VALUE vz) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosZ(NUM2DBL(vz)));
}

VALUE func_cos_al_sun(VALUE klass, VALUE vals) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_al_sun(NUM2DBL(vals)));
}

VALUE func_cos_tl_sun(VALUE klass, VALUE vtls) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_al_sun(NUM2DBL(vtls)));
}

VALUE func_cos_to_earth(VALUE klass, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_to_earth(NUM2DBL(vtoe)));
}

VALUE func_sin_al_sun(VALUE klass, VALUE vals) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_al_sun(NUM2DBL(vals)));
}

VALUE func_sin_tl_sun(VALUE klass, VALUE vtls) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_al_sun(NUM2DBL(vtls)));
}

VALUE func_sin_to_earth(VALUE klass, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_to_earth(NUM2DBL(vtoe)));
}

VALUE func_sin_dec_sun(VALUE klass, VALUE vds) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_dec_sun(NUM2DBL(vds)));
}

VALUE func_cos_dec_sun(VALUE klass, VALUE vds) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_dec_sun(NUM2DBL(vds)));
}

VALUE func_sin_lat(VALUE klass, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_lat(NUM2DBL(vlat)));
}

VALUE func_cos_lat(VALUE klass, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_lat(NUM2DBL(vlat)));
}

VALUE func_sun(VALUE klass, VALUE vz, VALUE vds, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sun(NUM2DBL(vz), NUM2DBL(vds), NUM2DBL(vlat)));
}

VALUE func_sun_dec(VALUE klass, VALUE vals, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sun_dec(NUM2DBL(vals), NUM2DBL(vtoe)));
}

VALUE cEot;
void
Init_eot(void) {

  VALUE cEot = rb_define_class("Eot", rb_cObject);
  id_status = rb_intern("@status");
  rb_define_method(cEot, "ml", func_ml, 1);
  rb_define_method(cEot, "eoe", func_eoe, 1);
  rb_define_method(cEot, "eqc", func_eqc, 2);
  rb_define_method(cEot, "tl", func_tl, 2);
  rb_define_method(cEot, "al", func_al, 3);
  rb_define_method(cEot, "cosZ", func_cosZ, 1);
  rb_define_method(cEot, "cos_al_sun", func_cos_al_sun, 1);
  rb_define_method(cEot, "cos_tl_sun", func_cos_tl_sun, 1);
  rb_define_method(cEot, "cos_to_earth", func_cos_to_earth, 1);
  rb_define_method(cEot, "sin_al_sun", func_sin_al_sun, 1);
  rb_define_method(cEot, "sin_tl_sun", func_sin_tl_sun, 1);
  rb_define_method(cEot, "sin_to_earth", func_sin_to_earth, 1);
  rb_define_method(cEot, "cos_dec_sun", func_cos_dec_sun, 1);
  rb_define_method(cEot, "sin_dec_sun", func_sin_dec_sun, 1);
  rb_define_method(cEot, "cos_lat", func_cos_lat, 1);
  rb_define_method(cEot, "sin_lat", func_sin_lat, 1);
  rb_define_method(cEot, "sun_dec", func_sun_dec, 2);
  rb_define_method(cEot, "sun", func_sun, 3);
  
}
