#include "ruby.h"
// #include "eot.h"

static VALUE ma_Sun(VALUE self, VALUE t)
{
VALUE ma;
ma = rb_iv_set(self, "@ma", rb_cFloat); 
return ma;
}

VALUE cEot;
void Init_eot() {
cEot = rb_define_class("EOT", rb_cObject);
rb_define_method(cEot, "ma", ma_Sun, 1);
}