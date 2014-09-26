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
}
