#include "ruby.h"
#include "eot.h"

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

VALUE cEot;
void
Init_ceot(void) {

  VALUE cEot = rb_define_class("Eot", rb_cObject);
  id_status = rb_intern("@status");
  rb_define_method(cEot, "ml", func_ml, 1);
  rb_define_method(cEot, "eoe", func_eoe, 1);
  rb_define_method(cEot, "eqc", func_eqc, 2);
  rb_define_method(cEot, "tl", func_tl, 2);
  rb_define_method(cEot, "al", func_al, 3);
  rb_define_method(cEot, "cosZ", func_cosZ, 1);
}
