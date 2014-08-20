# nutation.rb

require 'mutex_m'

class Eot    
 
  # From nutation.rb<br>
  # nutation data terms are used here.
  # arc seconds are used for these terms
  # see http://aa.usno.navy.mil/publications/docs/Circular_179.pdf page 46 (5.19) 
  def delta_equinox( ta = A2000 )
    ta = check_jct_zero( ta )    
    
    ma_moon = [-0.00024470, 0.051635, 31.8792, 1717915923.2178, 485868.249036].inject(0.0) {|p, a| p * ta[0] + a}		

    ma_sun  = [-0.00001149, 0.000136, -0.5532, 129596581.0481, 1287104.79305].inject(0.0) {|p, a| p * ta[0] + a}	
                    
    md_moon = [0.00000417, -0.001037, -12.7512, 1739527262.8478, 335779.526232].inject(0.0) {|p, a| p * ta[0] + a}
            
    me_moon = [-0.00003169, 0.006593, -6.3706, 1602961601.2090, 1072260.70369].inject(0.0) {|p, a| p * ta[0] + a} 
           
    omega   = [-0.00005939, 0.007702, 7.4722, -6962890.5431, 450160.398036].inject(0.0) {|p, a| p * ta[0] + a}            
    
    # declare and clear these two variables for the sigma loop
    delta_psi, delta_eps = 0, 0

    lines = data.size - 1
    for i in 0..lines
      fma_sun    = data[i][0].to_i
      fma_moon   = data[i][1].to_i  	
      fmd_moon   = data[i][2].to_i
      fme_moon   = data[i][3].to_i  
      fomega     = data[i][4].to_i

      sine       = sind(fma_moon * ma_moon +
                        fma_sun  * ma_sun  +
                        fmd_moon * md_moon +
                        fme_moon * me_moon +
                        fomega   * omega)
          
      cosine     = cosd(fma_moon * ma_moon +
                        fma_sun  * ma_sun  +
                        fmd_moon * md_moon +
                        fme_moon * me_moon +
                        fomega   * omega)
          
      delta_psi += (data[i][6].to_f                  + 
                    data[i][7].to_f  * ta[0]) * sine +
                    data[i][10].to_f * cosine
          
      delta_eps += (data[i][8].to_f                     + 
                    data[i][9].to_f   * ta[0]) * cosine +				 
                    data[i][12].to_f  * sine						
                         
    end

    delta_eps  = to_deg( delta_eps ) / 1000.0
    delta_psi  = to_deg( delta_psi ) / 1000.0

    [ delta_eps, delta_psi, ma_sun, omega, ma_moon, md_moon, me_moon]
  end

end
if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../tests/minitest', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'nutation_spec'

end