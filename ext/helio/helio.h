#include "math.h"
#include <sofam.h>

double apparent_lon(double t);
double cos_al_sun(double t);
double sin_al_sun(double t);

double eoe(double t);

double eoc(double t);

double mean_anomaly(double t);

double mean_lon(double t);

double mean_obliquity(double t);

double omega(double t);

double right_ascension(double t);

double sun(double zenith, double t, double lat);

double sun_dec(double t);
double cos_dec_sun(double t);
double sin_dec_sun(double t);

double true_lon(double t);
double cos_tl_sun(double t);
double sin_tl_sun(double t);

double true_obl(double t);
double cos_to_earth(double t);
double sin_to_earth(double t);

double cos_lat(double lat);
double sin_lat(double lat);

double cosZ(double zenith);
