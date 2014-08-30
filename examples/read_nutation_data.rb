# read_nutation_data.rb is a leftover from building it so I just left it in examples.

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'

eot = Eot.new

now = DateTime.now.to_time.utc.to_datetime

=begin

 The file this data comes from is 'Circular_179.pdf' IAU 2000A Nutation Series.
 The first 678 lines are for lunisolar data.

 # Try to make an array using each line of the file
 filename = 'nutation_series.txt'
 temp_array = []
 data = File.readlines(filename)
 # Clean out whitespace and new line breaks. 
 data.each {|i| temp_array << i.strip}
 # Make new muti-dimensional data array.
 data = []
 temp_array.each {|i| data << i.split}
 # Save the array in a file.
 File::open( "nutation_series.data", "w" ) do |f|
   f << data
 end

 # Make new muti-dimensional data array using yaml
 data = []
 temp_array.each {|i| data << i.split}
 # Save the array in a yaml file.
 File::open( "nutation_series.yaml", "w" ) do |f|
   f << data.to_yaml
 end


# $:.unshift(File.expand_path(File.dirname(__FILE__)))
# require 'nutation_series_data'
# or for => Ruby 1.9.2
 require_relative 'nutation_series_data'
# I manually added @data = to the beginning of the new array file nutation_series.rb so we may use it
# data = @data

# load in the yaml data
 data = []
 File.open( "nutation_series2.yaml" )  do |f|
   YAML.load_documents( f ) do |doc|
     data = doc      
   end
 end

=end

## data was initialized when the class instance was via nutation_series2.yaml file.
#data = eot.data
#file_path    =  File.expand_path( File.dirname( __FILE__ ) + "/nutation_table5_3a.yaml" )
#data         = YAML::load( File.open( file_path, 'r'), :safe => true  ).freeze
## Arc seconds to radians formula
#ARCSEC = 3600.0
#dtr = Math::PI / 180.0 / ARCSEC # adjusted for working in the arc seconds values

## sine degrees
#def sind(dtr, x)	
#	Math::sin(dtr*x)
#end
## cod degrees
#def cosd(dtr, x)
#	Math::cos(dtr*x)
#end


## The JD is at Noon 12:00 UTC for today
## In all of these expressions, T is the number of Julian centuries of TDB since 2000 Jan 1, 12h TDB (or,
## with negligible error, the number of Julian centuries of TT since J2000.0).
#jd2000 = 2451545.0 # the J2000 Julian Day Number
#
#ajd = DateTime.now.to_time.utc.to_datetime.ajd.to_f
#
## calculate time to julian centuries
#t = eot.time_julian_century()

## Values are in arc seconds see below for definitions of terms
#ma_moon = 485868.249036 + 1717915923.2178 * t[0] + 31.8792 * t[1] + 0.051635 * t[2] - 0.00024470 * t[3]
#ma_sun = 1287104.79305 + 129596581.0481 * t[0] - 0.5532 * t[1] + 0.000136 * t[2] - 0.00001149 * t[3]
#md_moon = 335779.526232 + 1739527262.8478 * t[0] - 12.7512 * t[1] - 0.001037 * t[2] + 0.00000417 * t[3]
#me_moon = 1072260.70369 + 1602961601.2090 * t[0] - 6.3706 * t[1] + 0.006593 * t[2] - 0.00003169 * t[3]
#omega = 450160.398036 - 6962890.5431 * t[0] + 7.4722 * t[1] + 0.007702 * t[2] - 0.00005939 * t[3]

## declare and clear these two variables for the sigma loop
#delta_psi, delta_eps = 0, 0
#
#lines = data.size - 1
#for i in 0..lines
#  fma_sun    = data[i][0].to_i
#  fma_moon   = data[i][1].to_i  	
#  fmd_moon   = data[i][2].to_i
#  fme_moon   = data[i][3].to_i  
#  fomega     = data[i][4].to_i
#  sine       = sind(dtr, fma_moon * ma_moon +
#                         fma_sun  * ma_sun  +
#                         fmd_moon * md_moon +
#                         fme_moon * me_moon +
#                         fomega   * omega)
#  cosine     = cosd(dtr, fma_moon * ma_moon +
#                         fma_sun  * ma_sun  +
#                         fmd_moon * md_moon +
#                         fme_moon * me_moon +
#                         fomega   * omega)
#  delta_psi += (data[i][6].to_f + 
#                data[i][7].to_f * t[0]) * sine +
#                data[i][10].to_f * cosine
#              
#  delta_eps += (data[i][8].to_f + 
#                data[i][9].to_f * t[0]) * cosine +				 
#                data[i][12].to_f  * sine   
#  										 
#end
#
## convert arc seconds to degree
#def to_deg( arc_secs )
#  arc_secs / ARCSEC
#end
#
#delta_eps = to_deg( delta_eps ) / 1000.0
#delta_eps = eot.delta_epsilon(t)
#
#delta_psi = to_deg( delta_psi ) / 1000.0
#delta_psi = eot.delta_psi(t)

#Delta epsilon degrees decimal = #{to_deg(delta_eps)}



##Delta psi needs to be degrees and eps is degrees but dtr uses ARCSEC constant also we need the result back in ARCSEC / 15 to get time in secs.
## eoe = delta_psi / ARCSEC * cosd( dtr * ARCSEC, eps ) * ARCSEC / 15.0
#eoe = eot.eq_of_equinox() / 15.0
##p eot.ml_Aries()
#gmst = eot.ml_Aries() / 15.0 # make angle to time.
## eoe is ARCSEC so convert it to hours.
#gast = gmst + eoe 



##Mean Obliquity of Ecliptic degrees = #{eot.display_degrees(eps0)}
#eot.mo_Earth()
##True Obliquity of Ecliptic degrees  = #{eot.display_degrees(eps)}
#eps = eot.to_Earth()

#eoe = eot.eq_of_equinox() / 15.0
#gmst = eot.ml_Aries() / 15.0 # make angle to time.
#gast = gmst + eoe
run = <<EOS

#{now.to_time}

The JD = #{eot.ajd = now.ajd.to_f}

Mean Obliquity of Ecliptic  = #{eot.degrees_to_s(eot.mo_Earth())}

Delta epsilon in arc seconds = #{eot.delta_epsilon() * 3600}

True Obliquity of Ecliptic degrees  = #{eot.degrees_to_s(eot.to_Earth())}

Delta psi in arc seconds = #{eot.delta_psi * 3600}

Equation of equinox in seconds = Delta psi * cos epsilon = #{eot.eq_of_equinox() / 15.0 * 3600}

Greenwich Mean Sidereal Time = #{eot.string_time(eot.ml_Aries() / 15.0)}

Greenwich Apparent Sideral Time = #{eot.string_time(eot.ml_Aries() / 15.0 + eot.eq_of_equinox() / 15.0)}

To compare results enter the date and time into http://www.celnav.de/longterm.htm

You can use the methods in EOT instead of this example as this just shows how it works.

EOS

puts run

# Helpful info
=begin
  these values are in arc seconds

  Mean anomaly of the moon 
  ma_moon = 485868.249036 + 1717915923.2178 * t + 31.8792 * t2 + 0.051635 * t3 - 0.00024470 * t4

  Mean anomaly of the sun
  ma_sun = 1287104.79305 + 129596581.0481 * t - 0.5532 * t2 + 0.000136 * t3 - 0.00001149 * t4

  
  Mean distance of the moon from the ascending node
  md_moon = 335779.526232 + 1739527262.8478 * t - 12.7512 * t2 - 0.001037 * t3 + 0.00000417 * t4

  
  Mean elongation of the moon
  me_moon = 1072260.70369 + 1602961601.2090 * t - 6.3706 * t2 + 0.006593 * t3 - 0.00003169 * t4

   
  Longitude of the ascending node of the moon
  omega = 450160.398036 - 6962890.5431 * t + 7.4722 * t2 + 0.007702 * t3 - 0.00005939 * t4

=end

=begin

Manualy converted values from arc seconds to dergrees(not used here)

ma_moon = 134.96340251 + 477198.8675605 * t + t2 / 112.92629677 + t3 / 69720.15106 - t4 / 14711892.112791
ma_sun = 357.52910918 + 35999.0502911389 * t - t2 / 6507.592191 + t3 / 26470588.2353 - t4 / 313315926.89295
md_moon = 93.27209062 + 483202.01745772 * t - t2 / 282.3264 - t3 / 3471552.555 + t4 / 863309352.5179856
me_moon = 297.8501954694 + 445267.11144694 * t - t2 / 565.0959 + t3 / 546033.672 - t4 / 113600504.891
omega = 125.04455501 - 1934.136261972 * t + t2 / 481.78582 + 0.007702 * t3 / 467411.062 - t4 / 60616265.3645

=end


=begin

An example of usage for 'Circular_179.pdf' IAU 2000A Nutation Series
The JavaScript from: view-source:http://www.celnav.de/longterm.htm
//Nutation, obliquity of the ecliptic
function Nutation()
{
  //IAU 1980 nutation theory:
  
  //Mean anomaly of the moon
  var Mm = 134.962981389+198.867398056*TE+trunc(477000*TE)+0.008697222222*TE2+TE3/56250;
  
  //Mean anomaly of the sun
  var M = 357.527723333+359.05034*TE+trunc(35640*TE)-0.0001602777778*TE2-TE3/300000;
  
  //Mean distance of the moon from the ascending node
  var F = 93.271910277+82.017538055*TE+trunc(483120*TE)-0.0036825*TE2+TE3/327272.7273;
  
  //Mean elongation of the moon
  var D = 297.850363055+307.11148*TE+trunc(444960*TE)-0.001914166667*TE2+TE3/189473.6842;
   
  //Longitude of the ascending node of the moon
  var omega = 125.044522222-134.136260833*TE-trunc(1800*TE)+0.002070833333*TE2+TE3/450000;

  //Periodic terms for nutation
  var nut = new Array(106);
  nut[0]  = " 0 0 0 0 1-171996-174.2 92025 8.9 ";     
  nut[1]  = " 0 0 2-2 2 -13187  -1.6  5736-3.1 ";     
  nut[2]  = " 0 0 2 0 2  -2274  -0.2   977-0.5 ";     
  nut[3]  = " 0 0 0 0 2   2062   0.2  -895 0.5 ";     
  nut[4]  = " 0-1 0 0 0  -1426   3.4    54-0.1 ";     
  nut[5]  = " 1 0 0 0 0    712   0.1    -7 0.0 ";     
  nut[6]  = " 0 1 2-2 2   -517   1.2   224-0.6 ";     
  nut[7]  = " 0 0 2 0 1   -386  -0.4   200 0.0 ";     
  nut[8]  = " 1 0 2 0 2   -301   0.0   129-0.1 ";     
  nut[9]  = " 0-1 2-2 2    217  -0.5   -95 0.3 ";     
  nut[10] = "-1 0 0 2 0    158   0.0    -1 0.0 ";     
  nut[11] = " 0 0 2-2 1    129   0.1   -70 0.0 ";     
  nut[12] = "-1 0 2 0 2    123   0.0   -53 0.0 ";     
  nut[13] = " 1 0 0 0 1     63   0.1   -33 0.0 ";     
  nut[14] = " 0 0 0 2 0     63   0.0    -2 0.0 ";     
  nut[15] = "-1 0 2 2 2    -59   0.0    26 0.0 ";     
  nut[16] = "-1 0 0 0 1    -58  -0.1    32 0.0 ";     
  nut[17] = " 1 0 2 0 1    -51   0.0    27 0.0 ";     
  nut[18] = "-2 0 0 2 0    -48   0.0     1 0.0 ";     
  nut[19] = "-2 0 2 0 1     46   0.0   -24 0.0 ";    
  nut[20] = " 0 0 2 2 2    -38   0.0    16 0.0 ";     
  nut[21] = " 2 0 2 0 2    -31   0.0    13 0.0 ";     
  nut[22] = " 2 0 0 0 0     29   0.0    -1 0.0 ";     
  nut[23] = " 1 0 2-2 2     29   0.0   -12 0.0 ";     
  nut[24] = " 0 0 2 0 0     26   0.0    -1 0.0 ";     
  nut[25] = " 0 0 2-2 0    -22   0.0     0 0.0 ";     
  nut[26] = "-1 0 2 0 1     21   0.0   -10 0.0 ";     
  nut[27] = " 0 2 0 0 0     17  -0.1     0 0.0 ";     
  nut[28] = " 0 2 2-2 2    -16   0.1     7 0.0 ";     
  nut[29] = "-1 0 0 2 1     16   0.0    -8 0.0 ";     
  nut[30] = " 0 1 0 0 1    -15   0.0     9 0.0 ";     
  nut[31] = " 1 0 0-2 1    -13   0.0     7 0.0 ";     
  nut[32] = " 0-1 0 0 1    -12   0.0     6 0.0 ";     
  nut[33] = " 2 0-2 0 0     11   0.0     0 0.0 ";     
  nut[34] = "-1 0 2 2 1    -10   0.0     5 0.0 ";     
  nut[35] = " 1 0 2 2 2     -8   0.0     3 0.0 ";     
  nut[36] = " 0-1 2 0 2     -7   0.0     3 0.0 ";     
  nut[37] = " 0 0 2 2 1     -7   0.0     3 0.0 ";     
  nut[38] = " 1 1 0-2 0     -7   0.0     0 0.0 ";     
  nut[39] = " 0 1 2 0 2      7   0.0    -3 0.0 ";     
  nut[40] = "-2 0 0 2 1     -6   0.0     3 0.0 ";     
  nut[41] = " 0 0 0 2 1     -6   0.0     3 0.0 ";     
  nut[42] = " 2 0 2-2 2      6   0.0    -3 0.0 ";     
  nut[43] = " 1 0 0 2 0      6   0.0     0 0.0 ";     
  nut[44] = " 1 0 2-2 1      6   0.0    -3 0.0 ";     
  nut[45] = " 0 0 0-2 1     -5   0.0     3 0.0 ";     
  nut[46] = " 0-1 2-2 1     -5   0.0     3 0.0 ";     
  nut[47] = " 2 0 2 0 1     -5   0.0     3 0.0 ";     
  nut[48] = " 1-1 0 0 0      5   0.0     0 0.0 ";     
  nut[49] = " 1 0 0-1 0     -4   0.0     0 0.0 ";     
  nut[50] = " 0 0 0 1 0     -4   0.0     0 0.0 ";     
  nut[51] = " 0 1 0-2 0     -4   0.0     0 0.0 ";     
  nut[52] = " 1 0-2 0 0      4   0.0     0 0.0 ";     
  nut[53] = " 2 0 0-2 1      4   0.0    -2 0.0 ";     
  nut[54] = " 0 1 2-2 1      4   0.0    -2 0.0 ";     
  nut[55] = " 1 1 0 0 0     -3   0.0     0 0.0 ";     
  nut[56] = " 1-1 0-1 0     -3   0.0     0 0.0 ";     
  nut[57] = "-1-1 2 2 2     -3   0.0     1 0.0 ";     
  nut[58] = " 0-1 2 2 2     -3   0.0     1 0.0 ";     
  nut[59] = " 1-1 2 0 2     -3   0.0     1 0.0 ";     
  nut[60] = " 3 0 2 0 2     -3   0.0     1 0.0 ";     
  nut[61] = "-2 0 2 0 2     -3   0.0     1 0.0 ";     
  nut[62] = " 1 0 2 0 0      3   0.0     0 0.0 ";     
  nut[63] = "-1 0 2 4 2     -2   0.0     1 0.0 ";     
  nut[64] = " 1 0 0 0 2     -2   0.0     1 0.0 ";     
  nut[65] = "-1 0 2-2 1     -2   0.0     1 0.0 ";     
  nut[66] = " 0-2 2-2 1     -2   0.0     1 0.0 ";     
  nut[67] = "-2 0 0 0 1     -2   0.0     1 0.0 ";     
  nut[68] = " 2 0 0 0 1      2   0.0    -1 0.0 ";     
  nut[69] = " 3 0 0 0 0      2   0.0     0 0.0 ";     
  nut[70] = " 1 1 2 0 2      2   0.0    -1 0.0 ";     
  nut[71] = " 0 0 2 1 2      2   0.0    -1 0.0 ";     
  nut[72] = " 1 0 0 2 1     -1   0.0     0 0.0 ";     
  nut[73] = " 1 0 2 2 1     -1   0.0     1 0.0 ";     
  nut[74] = " 1 1 0-2 1     -1   0.0     0 0.0 ";     
  nut[75] = " 0 1 0 2 0     -1   0.0     0 0.0 ";    
  nut[76] = " 0 1 2-2 0     -1   0.0     0 0.0 ";     
  nut[77] = " 0 1-2 2 0     -1   0.0     0 0.0 ";     
  nut[78] = " 1 0-2 2 0     -1   0.0     0 0.0 ";     
  nut[79] = " 1 0-2-2 0     -1   0.0     0 0.0 ";     
  nut[80] = " 1 0 2-2 0     -1   0.0     0 0.0 ";     
  nut[81] = " 1 0 0-4 0     -1   0.0     0 0.0 ";     
  nut[82] = " 2 0 0-4 0     -1   0.0     0 0.0 ";     
  nut[83] = " 0 0 2 4 2     -1   0.0     0 0.0 ";     
  nut[84] = " 0 0 2-1 2     -1   0.0     0 0.0 ";     
  nut[85] = "-2 0 2 4 2     -1   0.0     1 0.0 ";     
  nut[86] = " 2 0 2 2 2     -1   0.0     0 0.0 ";     
  nut[87] = " 0-1 2 0 1     -1   0.0     0 0.0 ";    
  nut[88] = " 0 0-2 0 1     -1   0.0     0 0.0 ";     
  nut[89] = " 0 0 4-2 2      1   0.0     0 0.0 ";     
  nut[90] = " 0 1 0 0 2      1   0.0     0 0.0 ";     
  nut[91] = " 1 1 2-2 2      1   0.0    -1 0.0 ";     
  nut[92] = " 3 0 2-2 2      1   0.0     0 0.0 ";     
  nut[93] = "-2 0 2 2 2      1   0.0    -1 0.0 ";     
  nut[94] = "-1 0 0 0 2      1   0.0    -1 0.0 ";     
  nut[95] = " 0 0-2 2 1      1   0.0     0 0.0 ";     
  nut[96] = " 0 1 2 0 1      1   0.0     0 0.0 ";     
  nut[97] = "-1 0 4 0 2      1   0.0     0 0.0 ";     
  nut[98] = " 2 1 0-2 0      1   0.0     0 0.0 ";     
  nut[99] = " 2 0 0 2 0      1   0.0     0 0.0 ";     
  nut[100]= " 2 0 2-2 1      1   0.0    -1 0.0 ";     
  nut[101]= " 2 0-2 0 1      1   0.0     0 0.0 ";     
  nut[102]= " 1-1 0-2 0      1   0.0     0 0.0 ";     
  nut[103]= "-1 0 0 1 1      1   0.0     0 0.0 ";     
  nut[104]= "-1-1 0 2 1      1   0.0     0 0.0 ";     
  nut[105]= " 0 1 0 1 0      1   0.0     0 0.0 ";  
      
   //Reading periodic terms
   var fMm, fM, fF, fD, f_omega, dp=0, de=0;
   
   for (x=0; x<105; x++)
   {
      fMm     = eval(nut[x].substring(0,2));
      fM      = eval(nut[x].substring(2,4));
      fF      = eval(nut[x].substring(4,6));
      fD      = eval(nut[x].substring(6,8));
      f_omega = eval(nut[x].substring(8,10));
      dp += (eval(nut[x].substring(10,17))+TE*eval(nut[x].substring(17,23)))*sind(fD*D+fM*M+fMm*Mm+fF*F+f_omega*omega);
      de   += (eval(nut[x].substring(23,29))+TE*eval(nut[x].substring(29,33)))*cosd(fD*D+fM*M+fMm*Mm+fF*F+f_omega*omega);
   }
   
   //Corrections (Herring, 1987)
   /*
   var corr = new Array(4);
   corr[0] = " 0 0 0 0 1-725 417 213 224 ";
   corr[1] = " 0 1 0 0 0 523  61 208 -24 ";
   corr[2] = " 0 0 2-2 2 102-118 -41 -47 ";
   corr[3] = " 0 0 2 0 2 -81   0  32   0 ";
   
   for (x=0; x<4; x++)
   {
      fMm     = eval(corr[x].substring(0,2));
      fM      = eval(corr[x].substring(2,4));
      fF      = eval(corr[x].substring(4,6));
      fD      = eval(corr[x].substring(6,8));
      f_omega = eval(corr[x].substring(8,10));
      dp += 0.1*(eval(corr[x].substring(10,14))*sind(fD*D+fM*M+fMm*Mm+fF*F+f_omega*omega)+eval(corr[x].substring(14,18))*cosd(fD*D+fM*M+fMm*Mm+fF*F+f_omega*omega));
      de += 0.1*(eval(corr[x].substring(18,22))*cosd(fD*D+fM*M+fMm*Mm+fF*F+f_omega*omega)+eval(corr[x].substring(22,26))*sind(fD*D+fM*M+fMm*Mm+fF*F+f_omega*omega));
   }
   */
      
   //Nutation in longitude
   delta_psi = dp/36000000;
   
   //Nutation in obliquity
   delta_eps = de/36000000;
   
   //Mean obliquity of the ecliptic
   eps0 = (84381.448-46.815*TE-0.00059*TE2+0.001813*TE3)/3600;
   
   //True obliquity of the ecliptic
   eps = eps0+delta_eps;
}

//Equation of the equinoxes
EoE = 240*delta_psi*cosd(eps);

=end
