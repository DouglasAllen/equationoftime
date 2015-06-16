.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

all : sunriset

	
.PHONY : all
	
sunriset : sunriset.o
	cc -o sunriset sunriset.o -lm -lsofa_c
sunriset.o : sunriset.c
	cc -c sunriset.c
	
