#include "ruby.h"
#include "sofam.h"
#include "sofa.h"

#ifndef DBL2NUM
# define DBL2NUM(dbl) rb_float_new(dbl)
#endif

VALUE mCeles;
ID id_status;

static VALUE
celes_s_status(VALUE self){
	return rb_ivar_get(self, id_status);
}

static VALUE
celes_s_cal2jd(VALUE self, VALUE vy, VALUE vm, VALUE vd){
	int ret;
	double djm0, djm;

	ret = iauCal2jd(NUM2INT(vy), NUM2INT(vm), NUM2INT(vd), &djm0, &djm);
	rb_ivar_set(self, id_status, INT2FIX(ret));

	if(ret == -1)
		rb_raise(rb_eArgError, "bad year");
	else if(ret == -2)
		rb_raise(rb_eArgError, "bad month");

	return rb_ary_new3(2, DBL2NUM(djm0), DBL2NUM(djm));
}

static VALUE
celes_s_fad03(VALUE self, VALUE vt){
	rb_ivar_set(self, id_status, INT2FIX(0));

	return DBL2NUM(iauFad03(NUM2DBL(vt)));
}

static VALUE
celes_s_faf03(VALUE self, VALUE vt){
	rb_ivar_set(self, id_status, INT2FIX(0));

	return DBL2NUM(iauFaf03(NUM2DBL(vt)));
}

static VALUE
celes_s_fal03(VALUE self, VALUE vt){
	rb_ivar_set(self, id_status, INT2FIX(0));

	return DBL2NUM(iauFal03(NUM2DBL(vt)));
}

static VALUE
celes_s_falp03(VALUE self, VALUE vt){
	rb_ivar_set(self, id_status, INT2FIX(0));

	return DBL2NUM(iauFalp03(NUM2DBL(vt)));
}

static VALUE
celes_s_faom03(VALUE self, VALUE vt){
	rb_ivar_set(self, id_status, INT2FIX(0));

	return DBL2NUM(iauFaom03(NUM2DBL(vt)));
}

static VALUE
celes_s_nut00a(VALUE self, VALUE vdate1, VALUE vdate2){
	double dpsi, deps;

	iauNut00a(NUM2DBL(vdate1), NUM2DBL(vdate2), &dpsi, &deps);
	rb_ivar_set(self, id_status, INT2FIX(0));

	return rb_ary_new3(2, DBL2NUM(dpsi), DBL2NUM(deps));
}

static VALUE
celes_s_nut06a(VALUE self, VALUE vdate1, VALUE vdate2){
	double dpsi, deps;

	iauNut06a(NUM2DBL(vdate1), NUM2DBL(vdate2), &dpsi, &deps);
	rb_ivar_set(self, id_status, INT2FIX(0));

	return rb_ary_new3(2, DBL2NUM(dpsi), DBL2NUM(deps));
}

void
Init_celes_core(void){
	mCeles = rb_define_module("Celes");
	id_status = rb_intern("@status");

	rb_define_module_function(mCeles, "status", celes_s_status, 0);
    rb_define_module_function(mCeles, "cal2jd", celes_s_cal2jd, 3);
    rb_define_module_function(mCeles, "faf03",  celes_s_faf03,  1);
    rb_define_module_function(mCeles, "fad03",  celes_s_fad03,  1);
    rb_define_module_function(mCeles, "fal03",  celes_s_fal03,  1);
    rb_define_module_function(mCeles, "falp03", celes_s_falp03, 1);
    rb_define_module_function(mCeles, "faom03", celes_s_faom03, 1);
    rb_define_module_function(mCeles, "nut00a", celes_s_nut00a, 2);
    rb_define_module_function(mCeles, "nut06a", celes_s_nut06a, 2);
  
  // rb_define_const(mCeles, "DAS2R",  DBL2NUM(DAS2R));
  // rb_define_const(mCeles, "TURNAS", DBL2NUM(TURNAS));
}

/*----------------------------------------------------------------------
**
**  Celes is a wrapper of the SOFA Library for Ruby.
**
**
**
**
**
**  Copyright (C) 2013, Naoki Arita
**  All rights reserved.
**
**  Redistribution and use in source and binary forms, with or without
**  modification, are permitted provided that the following conditions
**  are met:
**
**  1 Redistributions of source code must retain the above copyright
**    notice, this list of conditions and the following disclaimer.
**
**  2 Redistributions in binary form must reproduce the above copyright
**    notice, this list of conditions and the following disclaimer in
**    the documentation and/or other materials provided with the
**    distribution.
**
**  3 Neither the name of the Standards Of Fundamental Astronomy Board,
**    the International Astronomical Union nor the names of its
**    contributors may be used to endorse or promote products derived
**    from this software without specific prior written permission.
**
**  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
**  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
**  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
**  FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
**  COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
**  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
**  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
**  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
**  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
**  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
**  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
**  POSSIBILITY OF SUCH DAMAGE.
**
**--------------------------------------------------------------------*/
