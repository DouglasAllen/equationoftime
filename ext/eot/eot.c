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

VALUE cEot;
void
Init_eot(void) {

  VALUE cEot = rb_define_class("Eot", rb_cObject);
  id_status = rb_intern("@status");
  rb_define_method(cEot, "ml", func_ml, 1);
  rb_define_method(cEot, "eoe", func_eoe, 1);
  rb_define_method(cEot, "eqc", func_eqc, 2);
  rb_define_method(cEot, "tl", func_tl, 2);
}
