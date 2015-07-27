#include "ruby.h"
#include "ceot.h"

#ifndef DBL2NUM
# define DBL2NUM(dbl) rb_float_new(dbl)
#endif

ID id_status;

static VALUE
func_a2af(VALUE klass, VALUE vndp, VALUE vangle){
	char sign;
	int idmsf[4];

	iauA2af(NUM2INT(vndp), NUM2DBL(vangle), &sign, idmsf);
	rb_ivar_set(klass, id_status, INT2FIX(0));

	return rb_ary_new3(2, rb_str_new(&sign, 1),
			rb_ary_new3(4, INT2NUM(idmsf[0]), INT2NUM(idmsf[1]),
				INT2NUM(idmsf[2]), INT2NUM(idmsf[3])));
}

static VALUE
func_ee06a(VALUE klass, VALUE vdate1, VALUE vdate2){
	rb_ivar_set(klass, id_status, INT2FIX(0));

	return DBL2NUM(iauEe06a(NUM2DBL(vdate1), NUM2DBL(vdate2)));
}

static VALUE
func_anp(VALUE klass, VALUE va){
	rb_ivar_set(klass, id_status, INT2FIX(0));

	return DBL2NUM(iauAnp(NUM2DBL(va)));
}

static VALUE
func_gmst06(VALUE klass, VALUE vuta, VALUE vutb, VALUE vtta, VALUE vttb){
	rb_ivar_set(klass, id_status, INT2FIX(0));

	return DBL2NUM(iauGmst06(NUM2DBL(vuta), NUM2DBL(vutb),
			NUM2DBL(vtta), NUM2DBL(vttb)));
}

VALUE
func_nut06a(VALUE klass, VALUE vdate1, VALUE vdate2){
	double dpsi, deps;

	iauNut06a(NUM2DBL(vdate1), NUM2DBL(vdate2), &dpsi, &deps);
	rb_ivar_set(klass, id_status, INT2FIX(0));

	return rb_ary_new3(2, DBL2NUM(dpsi), DBL2NUM(deps));
}

VALUE func_gst06a(VALUE klass, VALUE vuta, VALUE vutb, VALUE vtta, VALUE vttb){
	rb_ivar_set(klass, id_status, INT2FIX(0));

	return DBL2NUM(iauGst06a(NUM2DBL(vuta), NUM2DBL(vutb),
			NUM2DBL(vtta), NUM2DBL(vttb)));
}

VALUE func_obl06(VALUE klass, VALUE vdate1, VALUE vdate2){
	rb_ivar_set(klass, id_status, INT2FIX(0));

	return DBL2NUM(iauObl06(NUM2DBL(vdate1), NUM2DBL(vdate2)));
}

VALUE func_falp03(VALUE klass, VALUE vt){
	rb_ivar_set(klass, id_status, INT2FIX(0));

	return DBL2NUM(iauFalp03(NUM2DBL(vt)));
}

VALUE func_cal2jd(VALUE klass, VALUE vy, VALUE vm, VALUE vd){
	int ret;
	double djm0, djm;

	ret = iauCal2jd(NUM2INT(vy), NUM2INT(vm), NUM2INT(vd), &djm0, &djm);
	rb_ivar_set(klass, id_status, INT2FIX(ret));

	if(ret == -1)
		rb_raise(rb_eArgError, "bad year");
	else if(ret == -2)
		rb_raise(rb_eArgError, "bad month");

	return rb_ary_new3(2, DBL2NUM(djm0), DBL2NUM(djm));
}

/* 
Julian century is t parameter
*/
VALUE func_jc(VALUE klass, VALUE vajd) 
{
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(jc(NUM2DBL(vajd)));
}

/*
Apparent longitude of the Sun C extension.
p1 = mean anomaly
p2 = time in julian centuries
p3 = angle of Omega
*/
VALUE func_al(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(alSun(NUM2DBL(vt)));
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
VALUE func_ml(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(mlSun(NUM2DBL(vt)));
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
VALUE func_eqc(VALUE klass, VALUE vt) {
 rb_ivar_set(klass, id_status, INT2FIX(0));
 return DBL2NUM(eqc(NUM2DBL(vt)));  
}
/*
C extension
*/
VALUE func_tl(VALUE klass, VALUE vt) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(tlSun(NUM2DBL(vt)));
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
VALUE func_sun_dec(VALUE klass, VALUE vals, VALUE vtoe) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(sun_dec(NUM2DBL(vals), NUM2DBL(vtoe)));
}
/*
C extension
*/
VALUE func_sun_ra(VALUE klass, VALUE vy0, VALUE vcas) {
  rb_ivar_set(klass, id_status, INT2FIX(0));
  return DBL2NUM(raSun(NUM2DBL(vy0), NUM2DBL(vcas)));
}

VALUE cEot;
void
Init_eot(void) {

  VALUE cEot = rb_define_class("Eot", rb_cObject);
  id_status = rb_intern("@status");
  rb_define_method(cEot, "cal2jd", func_cal2jd, 3);
  
  rb_define_method(cEot, "anp", func_anp, 1);
  rb_define_method(cEot, "gmst06", func_gmst06, 4);
  rb_define_method(cEot, "nut06a", func_nut06a, 2);
  rb_define_method(cEot, "gst06a", func_gst06a, 4);  
  rb_define_method(cEot, "obl06",func_obl06, 2);
  rb_define_method(cEot, "falp03",func_falp03, 1);
  rb_define_method(cEot, "ee06a", func_ee06a, 2);
  rb_define_method(cEot, "a2af", func_a2af, 2);
 
  rb_define_method(cEot, "jc", func_jc, 1);
  rb_define_method(cEot, "al", func_al, 1);
  rb_define_method(cEot, "cosZ", func_cosZ, 1);
  rb_define_method(cEot, "cos_al_sun", func_cos_al_sun, 1);
  rb_define_method(cEot, "cos_dec_sun", func_cos_dec_sun, 1);
  rb_define_method(cEot, "cos_lat", func_cos_lat, 1);
  rb_define_method(cEot, "cos_tl_sun", func_cos_tl_sun, 1);
  rb_define_method(cEot, "cos_to_earth", func_cos_to_earth, 1);
  rb_define_method(cEot, "eoe", func_eoe, 1);
  rb_define_method(cEot, "eqc", func_eqc, 1);
  rb_define_method(cEot, "ml", func_ml, 1); 
  rb_define_method(cEot, "sin_al_sun", func_sin_al_sun, 1);
  rb_define_method(cEot, "sin_dec_sun", func_sin_dec_sun, 1);
  rb_define_method(cEot, "sin_lat", func_sin_lat, 1);
  rb_define_method(cEot, "sin_tl_sun", func_sin_tl_sun, 1);
  rb_define_method(cEot, "sin_to_earth", func_sin_to_earth, 1);
  rb_define_method(cEot, "sun", func_sun, 3); 
  rb_define_method(cEot, "sun_dec", func_sun_dec, 2);
  rb_define_method(cEot, "sun_ra", func_sun_ra, 2);
  rb_define_method(cEot, "tl", func_tl, 1);
  
}
