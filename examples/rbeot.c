#include "ruby.h"

#ifndef DBL2NUM
# define DBL2NUM(dbl) rb_float_new(dbl)
#endif

VALUE cEot;
ID id_status;

static VALUE
ma_Sun(VALUE self, VALUE vt) {

  rb_ivar_set(self, id_status, INT2FIX(0));
  return DBL2NUM(maSun(NUM2DBL(vt)));
}


void
Init_rbeot(void) {

    cEot = rb_define_class("EOT", rb_cObject);
    id_status = rb_intern("@status");
    rb_define_method(cEot, "ma", ma_Sun, 1);
}
