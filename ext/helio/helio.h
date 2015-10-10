#include "math.h"
#include "sofam.h"
#include "sofa.h"

double apparent_longitude(double t);
double cosine_apparent_longitude(double t);
double sine_apparent_longitude(double t);

double delta_epsilon(double t);

double delta_psi(double t);

double earth_orbital_eccentricity(double t);

double equation_of_center(double t);

double mean_anomaly(double t);

double mean_longitude(double t);

double mean_obliquity(double t);

double omega(double t);

double right_ascension(double t);

double horizon_angle(double zenith, double t, double lat);

double declination(double t);
double cosine_declination(double t);
double sine_declination(double t);

double true_anomaly(double t);

double true_longitude(double t);
double cosine_true_longitude(double t);
double sine_true_longitude(double t);

double true_obliquity(double t);
double cosine_true_obliquity(double t);
double sine_true_obliquity(double t);

double cosine_latitude(double lat);
double sine_latitude(double lat);

double cosine_zenith(double zenith);

double mean_longitude_aries(double t);
double true_longitude_aries(double t);
double earth_rotation_angle(double t);
double equation_of_equinox(double t);
