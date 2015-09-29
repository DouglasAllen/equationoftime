#include "ruby.h"
#include "helio.h"

#ifndef DBL2NUM
# define DBL2NUM(dbl) rb_float_new(dbl)
#endif

VALUE mHelio;
ID id_status;

static VALUE
func_apparent_longitude(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(apparent_longitude(NUM2DBL(vt)));
}

static VALUE
func_cosine_zenith(VALUE klass, VALUE vz) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosine_zenith(NUM2DBL(vz)));
}

static VALUE
func_cosine_apparent_longitude(VALUE klass, VALUE vals) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosine_apparent_longitude(NUM2DBL(vals)));
}

static VALUE
func_cosine_declination(VALUE klass, VALUE vds) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosine_declination(NUM2DBL(vds)));
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
func_mean_longitude(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mean_longitude(NUM2DBL(vt)));
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
func_earth_orbital_eccentricity(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(earth_orbital_eccentricity(NUM2DBL(vt)));
}

static VALUE
func_equation_of_center(VALUE klass, VALUE vt) {
 rb_ivar_set(klass, id_status, INT2FIX(0));
 return DBL2NUM(equation_of_center(NUM2DBL(vt)));  
}

static VALUE
func_true_anomaly(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(true_anomaly(NUM2DBL(vt)));
}

static VALUE
func_true_longitude(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(true_longitude(NUM2DBL(vt)));
}

static VALUE
func_true_obliquity(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(true_obliquity(NUM2DBL(vt)));
}

static VALUE
func_cosine_true_longitude(VALUE klass, VALUE vtls) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosine_true_longitude(NUM2DBL(vtls)));
}

static VALUE
func_cosine_true_obliquity(VALUE klass, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosine_true_obliquity(NUM2DBL(vtoe)));
}

static VALUE
func_sine_apparent_longitude(VALUE klass, VALUE vals) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sine_apparent_longitude(NUM2DBL(vals)));
}

static VALUE
func_sine_true_longitude(VALUE klass, VALUE vtls) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sine_true_longitude(NUM2DBL(vtls)));
}

static VALUE
func_sine_true_obliquity(VALUE klass, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sine_true_obliquity(NUM2DBL(vtoe)));
}

static VALUE
func_sine_declination(VALUE klass, VALUE vds) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sine_declination(NUM2DBL(vds)));
}

static VALUE
func_sine_latitude(VALUE klass, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sine_latitude(NUM2DBL(vlat)));
}

static VALUE
func_cosine_latitude(VALUE klass, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(cosine_latitude(NUM2DBL(vlat)));
}

static VALUE
func_horizon_angle(VALUE klass, VALUE vz, VALUE vt, VALUE vlat) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(horizon_angle(NUM2DBL(vz), NUM2DBL(vt), NUM2DBL(vlat)));
}

static VALUE
func_declination(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(declination(NUM2DBL(vt)));
}

static VALUE
func_right_ascension(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(right_ascension(NUM2DBL(vt)));
}

static VALUE
func_mean_longitude_aries(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
 
  return DBL2NUM(mean_longitude_aries(NUM2DBL(vt)));
}

static VALUE
func_true_longitude_aries(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));

  return DBL2NUM(true_longitude_aries(NUM2DBL(vt)));
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

static VALUE
func_a2tf(VALUE self, VALUE vndp, VALUE vangle){
  char sign;
  int ihmsf[4];

  iauA2tf(NUM2INT(vndp), NUM2DBL(vangle), &sign, ihmsf);
  rb_ivar_set(self, id_status, INT2FIX(0));

  return rb_ary_new3(2, rb_str_new(&sign, 1),
         rb_ary_new3(4, INT2NUM(ihmsf[0]), INT2NUM(ihmsf[1]),
			INT2NUM(ihmsf[2]), INT2NUM(ihmsf[3])));
}


void
Init_helio(void) {

  VALUE mHelio = rb_define_module("Helio");
  id_status = rb_intern("@status");
  rb_define_module_function(mHelio, "apparent_longitude", func_apparent_longitude, 1);
  rb_define_module_function(mHelio, "cosine_zenith", func_cosine_zenith, 1);
  rb_define_module_function(mHelio, "cosine_apparent_longitude", func_cosine_apparent_longitude, 1);
  rb_define_module_function(mHelio, "cosine_declination", func_cosine_declination, 1);
  rb_define_module_function(mHelio, "cosine_latitude", func_cosine_latitude, 1);
  rb_define_module_function(mHelio, "cosine_true_longitude", func_cosine_true_longitude, 1);
  rb_define_module_function(mHelio, "cosine_true_obliquity", func_cosine_true_obliquity, 1);
  rb_define_module_function(mHelio, "earth_orbital_eccentricity", func_earth_orbital_eccentricity, 1);
  rb_define_module_function(mHelio, "equation_of_center", func_equation_of_center, 1);
  rb_define_module_function(mHelio, "mean_anomaly", func_mean_anomaly, 1);
  rb_define_module_function(mHelio, "mean_obliquity", func_mean_obliquity, 1);
  rb_define_module_function(mHelio, "mean_longitude", func_mean_longitude, 1);
  rb_define_module_function(mHelio, "omega", func_omega, 1); 
  rb_define_module_function(mHelio, "sine_apparent_longitude", func_sine_apparent_longitude, 1);
  rb_define_module_function(mHelio, "sine_declination", func_sine_declination, 1);
  rb_define_module_function(mHelio, "sine_latitude", func_sine_latitude, 1);
  rb_define_module_function(mHelio, "sine_true_longitude", func_sine_true_longitude, 1);
  rb_define_module_function(mHelio, "sine_true_obliquity", func_sine_true_obliquity, 1);
  rb_define_module_function(mHelio, "horizon_angle", func_horizon_angle, 3); 
  rb_define_module_function(mHelio, "declination", func_declination, 1);
  rb_define_module_function(mHelio, "right_ascension", func_right_ascension, 1);
  rb_define_module_function(mHelio, "true_anomaly", func_true_anomaly, 1);
  rb_define_module_function(mHelio, "true_longitude", func_true_longitude, 1);
  rb_define_module_function(mHelio, "true_obliquity", func_true_obliquity, 1);
  rb_define_module_function(mHelio, "mean_longitude_aries", func_mean_longitude_aries, 1);
  rb_define_module_function(mHelio, "true_longitude_aries", func_true_longitude_aries, 1);
  rb_define_module_function(mHelio, "earth_rotation_angle", func_earth_rotation_angle, 1);
  rb_define_module_function(mHelio, "equation_of_equinox", func_equation_of_equinox, 1);
  rb_define_module_function(mHelio, "date2ajd", func_date2ajd, 3);
  rb_define_module_function(mHelio, "a2af",   func_a2af,   2);
  rb_define_module_function(mHelio, "a2tf",   func_a2tf,   2);
  rb_define_module_function(mHelio, "delta_epsilon",   func_delta_epsilon,   1);
  rb_define_module_function(mHelio, "delta_psi",   func_delta_psi,   1);

  
}
