#include "ruby.h"
#include "helio.h"

#ifndef DBL2NUM
# define DBL2NUM(dbl) rb_float_new(dbl)
#endif

VALUE mHelio;
ID id_status;

static VALUE
func_apparent_lon(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(apparent_lon(NUM2DBL(vt)));
}

static VALUE
func_cosZ(VALUE klass, VALUE vz) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosZ(NUM2DBL(vz)));
}

static VALUE
func_cos_al_sun(VALUE klass, VALUE vals) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_al_sun(NUM2DBL(vals)));
}

static VALUE
func_cos_dec_sun(VALUE klass, VALUE vds) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_dec_sun(NUM2DBL(vds)));
}

static VALUE
func_mean_anomaly(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mean_anomaly(NUM2DBL(vt)));
}

static VALUE
func_mean_obliquity(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mean_obliquity(NUM2DBL(vt)));
}

static VALUE
func_mean_lon(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mean_lon(NUM2DBL(vt)));
}

static VALUE
func_omega(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(omega(NUM2DBL(vt)));
}

static VALUE
func_delta_epsilon(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(delta_epsilon(NUM2DBL(vt)));
}

static VALUE
func_delta_psi(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(delta_psi(NUM2DBL(vt)));
}

static VALUE
func_eoe(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(eoe(NUM2DBL(vt)));
}

static VALUE
func_eoc(VALUE klass, VALUE vt) {
 rb_ivar_set(klass, id_status, INT2FIX(0));
 return DBL2NUM(eoc(NUM2DBL(vt)));  
}

static VALUE
func_true_anomaly(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(true_anomaly(NUM2DBL(vt)));
}

static VALUE
func_true_lon(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(true_lon(NUM2DBL(vt)));
}

static VALUE
func_true_obl(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(true_obl(NUM2DBL(vt)));
}

static VALUE
func_cos_tl_sun(VALUE klass, VALUE vtls) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_al_sun(NUM2DBL(vtls)));
}

static VALUE
func_cos_to_earth(VALUE klass, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_to_earth(NUM2DBL(vtoe)));
}

static VALUE
func_sin_al_sun(VALUE klass, VALUE vals) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_al_sun(NUM2DBL(vals)));
}

static VALUE
func_sin_tl_sun(VALUE klass, VALUE vtls) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_al_sun(NUM2DBL(vtls)));
}

static VALUE
func_sin_to_earth(VALUE klass, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_to_earth(NUM2DBL(vtoe)));
}

static VALUE
func_sin_dec_sun(VALUE klass, VALUE vds) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_dec_sun(NUM2DBL(vds)));
}

static VALUE
func_sin_lat(VALUE klass, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sin_lat(NUM2DBL(vlat)));
}

static VALUE
func_cos_lat(VALUE klass, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cos_lat(NUM2DBL(vlat)));
}

static VALUE
func_sun(VALUE klass, VALUE vz, VALUE vt, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sun(NUM2DBL(vz), NUM2DBL(vt), NUM2DBL(vlat)));
}

static VALUE
func_sun_dec(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sun_dec(NUM2DBL(vt)));
}

static VALUE
func_right_ascension(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(right_ascension(NUM2DBL(vt)));
}

static VALUE
func_mean_longitude_aries(VALUE klass, VALUE vt, VALUE vt1, VALUE vt2, VALUE vt3) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mean_longitude_aries(NUM2DBL(vt), NUM2DBL(vt1), NUM2DBL(vt2), NUM2DBL(vt3)));
}

static VALUE
func_true_longitude_aries(VALUE klass, VALUE vt, VALUE vt1, VALUE vt2, VALUE vt3) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(true_longitude_aries(NUM2DBL(vt), NUM2DBL(vt1), NUM2DBL(vt2), NUM2DBL(vt3)));
}

static VALUE
func_earth_rotation_angle(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(earth_rotation_angle(NUM2DBL(vt)));
}

static VALUE
func_equation_of_equinox(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(equation_of_equinox(NUM2DBL(vt)));
}

static VALUE
func_date2ajd(VALUE self, VALUE vy, VALUE vm, VALUE vd) {
  int ret;
  double djm0, djm;

  ret = iauCal2jd(NUM2INT(vy), NUM2INT(vm), NUM2INT(vd), &djm0, &djm);
  rb_ivar_set(self, id_status, INT2FIX(ret));

  if(ret == -1)
    rb_raise(rb_eArgError, "bad year");
  else if(ret == -2)
    rb_raise(rb_eArgError, "bad month");
  
  return DBL2NUM(djm0 + djm);
}

static VALUE
func_a2af(VALUE self, VALUE vndp, VALUE vangle){
  char sign;
  int idmsf[4];

  iauA2af(NUM2INT(vndp), NUM2DBL(vangle), &sign, idmsf);
  rb_ivar_set(self, id_status, INT2FIX(0));

  return rb_ary_new3(2, rb_str_new(&sign, 1),
         rb_ary_new3(4, INT2NUM(idmsf[0]), INT2NUM(idmsf[1]),
	        	INT2NUM(idmsf[2]), INT2NUM(idmsf[3])));
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
  rb_define_module_function(mHelio, "omega", func_omega, 1); 
  rb_define_module_function(mHelio, "sin_al_sun", func_sin_al_sun, 1);
  rb_define_module_function(mHelio, "sin_dec_sun", func_sin_dec_sun, 1);
  rb_define_module_function(mHelio, "sin_lat", func_sin_lat, 1);
  rb_define_module_function(mHelio, "sin_tl_sun", func_sin_tl_sun, 1);
  rb_define_module_function(mHelio, "sin_to_earth", func_sin_to_earth, 1);
  rb_define_module_function(mHelio, "sun", func_sun, 3); 
  rb_define_module_function(mHelio, "sun_dec", func_sun_dec, 1);
  rb_define_module_function(mHelio, "right_ascension", func_right_ascension, 1);
  rb_define_module_function(mHelio, "true_anomaly", func_true_anomaly, 1);
  rb_define_module_function(mHelio, "true_lon", func_true_lon, 1);
  rb_define_module_function(mHelio, "true_obl", func_true_obl, 1);
  rb_define_module_function(mHelio, "mean_longitude_aries", func_mean_longitude_aries, 4);
  rb_define_module_function(mHelio, "true_longitude_aries", func_true_longitude_aries, 4);
  rb_define_module_function(mHelio, "earth_rotation_angle", func_earth_rotation_angle, 1);
  rb_define_module_function(mHelio, "equation_of_equinox", func_equation_of_equinox, 1);
  rb_define_module_function(mHelio, "date2ajd", func_date2ajd, 3);
  rb_define_module_function(mHelio, "a2af",   func_a2af,   2);
  rb_define_module_function(mHelio, "delta_epsilon",   func_delta_epsilon,   1);
  rb_define_module_function(mHelio, "delta_psi",   func_delta_psi,   1);

  
}
