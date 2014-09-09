
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@:)
ECHO = $(ECHO1:0=@echo)

#### Start of system configuration section. ####

srcdir = .
topdir = /home/kb9agt/.rvm/rubies/ruby-2.1.2/include/ruby-2.1.0
hdrdir = $(topdir)
arch_hdrdir = /home/kb9agt/.rvm/rubies/ruby-2.1.2/include/ruby-2.1.0/i686-linux
PATH_SEPARATOR = :
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
prefix = $(DESTDIR)/home/kb9agt/.rvm/rubies/ruby-2.1.2
rubysitearchprefix = $(rubylibprefix)/$(sitearch)
rubyarchprefix = $(rubylibprefix)/$(arch)
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
exec_prefix = $(prefix)
vendorarchhdrdir = $(vendorhdrdir)/$(sitearch)
sitearchhdrdir = $(sitehdrdir)/$(sitearch)
rubyarchhdrdir = $(rubyhdrdir)/$(arch)
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
sitehdrdir = $(rubyhdrdir)/site_ruby
rubyhdrdir = $(includedir)/$(RUBY_VERSION_NAME)
vendorarchdir = $(vendorlibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendordir = $(rubylibprefix)/vendor_ruby
sitearchdir = $(sitelibdir)/$(sitearch)
sitelibdir = $(sitedir)/$(ruby_version)
sitedir = $(rubylibprefix)/site_ruby
rubyarchdir = $(rubylibdir)/$(arch)
rubylibdir = $(rubylibprefix)/$(ruby_version)
sitearchincludedir = $(includedir)/$(sitearch)
archincludedir = $(includedir)/$(arch)
sitearchlibdir = $(libdir)/$(sitearch)
archlibdir = $(libdir)/$(arch)
ridir = $(datarootdir)/$(RI_BASE_NAME)
mandir = $(datarootdir)/man
localedir = $(datarootdir)/locale
libdir = $(exec_prefix)/lib
psdir = $(docdir)
pdfdir = $(docdir)
dvidir = $(docdir)
htmldir = $(docdir)
infodir = $(datarootdir)/info
docdir = $(datarootdir)/doc/$(PACKAGE)
oldincludedir = $(DESTDIR)/usr/include
includedir = $(prefix)/include
localstatedir = $(prefix)/var
sharedstatedir = $(prefix)/com
sysconfdir = $(prefix)/etc
datadir = $(datarootdir)
datarootdir = $(prefix)/share
libexecdir = $(exec_prefix)/libexec
sbindir = $(exec_prefix)/sbin
bindir = $(exec_prefix)/bin
archdir = $(rubyarchdir)


CC = gcc
CXX = g++
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)-static
empty =
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)

RUBY_EXTCONF_H = 
cflags   =  $(optflags) $(debugflags) $(warnflags)
optflags = -O3 -fno-fast-math
debugflags = -ggdb3
warnflags = -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wunused-variable -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration
CCDLFLAGS = -fPIC
CFLAGS   = $(CCDLFLAGS) $(cflags)  -fPIC $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir)
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS =   $(DEFS) $(cppflags)
CXXFLAGS = $(CCDLFLAGS) $(cxxflags) $(ARCH_FLAG)
ldflags  = -L. -fstack-protector -rdynamic -Wl,-export-dynamic
dldflags =  
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -shared
LDSHAREDXX = $(CXX) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
RUBYW_INSTALL_NAME = 
RUBY_VERSION_NAME = $(RUBY_BASE_NAME)-$(ruby_version)
RUBYW_BASE_NAME = rubyw
RUBY_BASE_NAME = ruby

arch = i686-linux
sitearch = $(arch)
ruby_version = 2.1.0
ruby = $(bindir)/ruby
RUBY = $(ruby)
ruby_headers = $(hdrdir)/ruby.h $(hdrdir)/ruby/ruby.h $(hdrdir)/ruby/defines.h $(hdrdir)/ruby/missing.h $(hdrdir)/ruby/intern.h $(hdrdir)/ruby/st.h $(hdrdir)/ruby/subst.h $(arch_hdrdir)/ruby/config.h

RM = rm -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = rmdir --ignore-fail-on-non-empty -p
MAKEDIRS = /bin/mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp
TOUCH = exit >

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -lpthread -lrt -ldl -lcrypt -lm   -lc
ORIG_SRCS = tcbtdb.c c2t00b.c seps.c trxpv.c tttcg.c jd2cal.c taiut1.c numat.c c2ixy.c xys06a.c faur03.c fapa03.c a2af.c trxp.c celes_core.c dtf2d.c pnm80.c a2tf.c fw2xy.c rxpv.c d2dtf.c pas.c pn06a.c epj.c ut1tai.c ppsp.c plan94.c bp06.c tttdb.c starpv.c zr.c pv2p.c falp03.c nut00b.c pap.c gst06.c fk5hz.c starpm.c s00.c s2xpv.c p2pv.c gmst06.c gc2gde.c c2t06a.c pvmpv.c eform.c epb.c gd2gce.c num00a.c s2p.c pvup.c pn00b.c sxpv.c c2tcio.c num06a.c bi00.c faju03.c fane03.c pm.c bp00.c hfk5z.c ee00a.c gd2gc.c pvppv.c obl06.c nut06a.c p06e.c gmst82.c pn.c pxp.c obl80.c pom00.c fae03.c pb06.c pmat76.c pr00.c xys00a.c taitt.c c2ibpn.c pn00a.c prec76.c c2txy.c fad03.c p2s.c cal2jd.c ee06a.c cpv.c rxr.c ut1tt.c pfw06.c tdbtcb.c s06a.c ee00b.c gst00a.c pnm00b.c zp.c pvdpv.c gst94.c xy06.c dat.c pvstar.c s00a.c sp00.c jdcalf.c cr.c s00b.c tr.c pmat06.c rm2v.c d2tf.c epb2jd.c s06.c fk5hip.c zpv.c epj2jd.c eors.c fw2m.c af2a.c rxp.c era00.c rz.c ee00.c ir.c dtdb.c sepp.c tcgtt.c eqeq94.c nut00a.c fk52h.c pv2s.c tf2d.c c2t00a.c fasa03.c ttut1.c pn00.c num00b.c fal03.c pnm00a.c pdp.c c2teqx.c gmst00.c bpn2xy.c rx.c ppp.c eect00.c cp.c tf2a.c sxp.c gc2gd.c rv2m.c tttai.c faf03.c pmat00.c c2tpe.c pvm.c anpm.c ut1utc.c c2i00b.c fave03.c c2i06a.c s2pv.c gst00b.c nutm80.c pnm06a.c taiutc.c anp.c eo06a.c xys00b.c s2c.c utcut1.c c2i00a.c nut80.c fame03.c pmp.c ry.c pvxpv.c tdbtt.c utctai.c h2fk5.c epv00.c pn06.c fama03.c pvu.c gst06a.c faom03.c c2ixys.c c2s.c
SRCS = $(ORIG_SRCS) 
OBJS = tcbtdb.o c2t00b.o seps.o trxpv.o tttcg.o jd2cal.o taiut1.o numat.o c2ixy.o xys06a.o faur03.o fapa03.o a2af.o trxp.o celes_core.o dtf2d.o pnm80.o a2tf.o fw2xy.o rxpv.o d2dtf.o pas.o pn06a.o epj.o ut1tai.o ppsp.o plan94.o bp06.o tttdb.o starpv.o zr.o pv2p.o falp03.o nut00b.o pap.o gst06.o fk5hz.o starpm.o s00.o s2xpv.o p2pv.o gmst06.o gc2gde.o c2t06a.o pvmpv.o eform.o epb.o gd2gce.o num00a.o s2p.o pvup.o pn00b.o sxpv.o c2tcio.o num06a.o bi00.o faju03.o fane03.o pm.o bp00.o hfk5z.o ee00a.o gd2gc.o pvppv.o obl06.o nut06a.o p06e.o gmst82.o pn.o pxp.o obl80.o pom00.o fae03.o pb06.o pmat76.o pr00.o xys00a.o taitt.o c2ibpn.o pn00a.o prec76.o c2txy.o fad03.o p2s.o cal2jd.o ee06a.o cpv.o rxr.o ut1tt.o pfw06.o tdbtcb.o s06a.o ee00b.o gst00a.o pnm00b.o zp.o pvdpv.o gst94.o xy06.o dat.o pvstar.o s00a.o sp00.o jdcalf.o cr.o s00b.o tr.o pmat06.o rm2v.o d2tf.o epb2jd.o s06.o fk5hip.o zpv.o epj2jd.o eors.o fw2m.o af2a.o rxp.o era00.o rz.o ee00.o ir.o dtdb.o sepp.o tcgtt.o eqeq94.o nut00a.o fk52h.o pv2s.o tf2d.o c2t00a.o fasa03.o ttut1.o pn00.o num00b.o fal03.o pnm00a.o pdp.o c2teqx.o gmst00.o bpn2xy.o rx.o ppp.o eect00.o cp.o tf2a.o sxp.o gc2gd.o rv2m.o tttai.o faf03.o pmat00.o c2tpe.o pvm.o anpm.o ut1utc.o c2i00b.o fave03.o c2i06a.o s2pv.o gst00b.o nutm80.o pnm06a.o taiutc.o anp.o eo06a.o xys00b.o s2c.o utcut1.o c2i00a.o nut80.o fame03.o pmp.o ry.o pvxpv.o tdbtt.o utctai.o h2fk5.o epv00.o pn06.o fama03.o pvu.o gst06a.o faom03.o c2ixys.o c2s.o
HDRS = $(srcdir)/sofam.h $(srcdir)/sofa.h
TARGET = celes_core
TARGET_NAME = celes_core
TARGET_ENTRY = Init_$(TARGET_NAME)
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

TIMESTAMP_DIR = .
BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR    = $(sitelibdir)$(target_prefix)
RUBYARCHDIR   = $(sitearchdir)$(target_prefix)
HDRDIR        = $(rubyhdrdir)/ruby$(target_prefix)
ARCHHDRDIR    = $(rubyhdrdir)/$(arch)/ruby$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so 
CLEANOBJS     = *.o  *.bak

all:    $(DLLIB)
static: $(STATIC_LIB)
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-static clean-rb

clean-static::
clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-static clean-rb-default clean-rb
		-$(Q)$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES) .*.time

distclean-rb-default::
distclean-rb::
distclean-so::
distclean-static::
distclean: clean distclean-so distclean-static distclean-rb-default distclean-rb
		-$(Q)$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		-$(Q)$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		-$(Q)$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(DLLIB) $(TIMESTAMP_DIR)/.RUBYARCHDIR.time
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default:
	$(ECHO) installing default celes_core libraries
$(TIMESTAMP_DIR)/.RUBYARCHDIR.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYARCHDIR)
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .C .o

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.C.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

$(DLLIB): $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
celes_core.o: celes_core.c sofa.h sofam.h a2af.c a2tf.c af2a.c \
		anp.c anpm.c bi00.c bp00.c bp06.c bpn2xy.c c2i00a.c c2i00b.c \
		c2i06a.c c2ibpn.c c2ixy.c c2ixys.c c2s.c c2t00a.c c2t00b.c \
		c2t06a.c c2tcio.c c2teqx.c c2tpe.c c2txy.c cal2jd.c cp.c cpv.c \
		cr.c d2dtf.c d2tf.c dat.c dtdb.c dtf2d.c ee00.c ee00a.c ee00b.c \
		ee06a.c eect00.c eform.c eo06a.c eors.c epb.c epb2jd.c epj.c \
		epj2jd.c epv00.c eqeq94.c era00.c fad03.c fae03.c faf03.c \
		faju03.c fal03.c falp03.c fama03.c fame03.c fane03.c faom03.c \
		fapa03.c fasa03.c faur03.c fave03.c fk52h.c fk5hip.c fk5hz.c \
		fw2m.c fw2xy.c gc2gd.c gc2gde.c gd2gc.c gd2gce.c gmst00.c \
		gmst06.c gmst82.c gst00a.c gst00b.c gst06.c gst06a.c gst94.c \
		h2fk5.c hfk5z.c ir.c jd2cal.c jdcalf.c num00a.c num00b.c \
		num06a.c numat.c nut00a.c nut00b.c nut06a.c nut80.c nutm80.c \
		obl06.c obl80.c p06e.c p2pv.c p2s.c pap.c pas.c pb06.c pdp.c \
		pfw06.c plan94.c pm.c pmat00.c pmat06.c pmat76.c pmp.c pn.c \
		pn00.c pn00a.c pn00b.c pn06.c pn06a.c pnm00a.c pnm00b.c \
		pnm06a.c pnm80.c pom00.c ppp.c ppsp.c pr00.c prec76.c pv2p.c \
		pv2s.c pvdpv.c pvm.c pvmpv.c pvppv.c pvstar.c pvu.c pvup.c \
		pvxpv.c pxp.c rm2v.c rv2m.c rx.c rxp.c rxpv.c rxr.c ry.c \
		rz.c s00.c s00a.c s00b.c s06.c s06a.c s2c.c s2p.c s2pv.c \
		s2xpv.c sepp.c seps.c sp00.c starpm.c starpv.c sxp.c sxpv.c \
		taitt.c taiut1.c taiutc.c tcbtdb.c tcgtt.c tdbtcb.c tdbtt.c \
		tf2a.c tf2d.c tr.c trxp.c trxpv.c tttai.c tttcg.c tttdb.c \
		ttut1.c ut1tai.c ut1tt.c ut1utc.c utctai.c utcut1.c xy06.c \
		xys00a.c xys00b.c xys06a.c zp.c zpv.c zr.c
