#include "eot.h"
double maSun(double t)
{
	   double a;


	/* Mean anomaly of the Sun (IERS Conventions 2003). */
	   a = fmod(         1287104.793048 +
	             t * (      129596581.0481   +
	             t * (                    - 0.5532   +
	             t * (                    0.000136 +
	             t * (       - 0.00001149 ) ) ) ), 1296000.0 ) * 4.848136811095359935899141e-6;

	   return a;
}
