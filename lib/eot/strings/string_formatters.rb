##
# class Eot file = string_formatters.rb:
# methods for display of angles.

class Eot

  # From string_formaters.rb
  # String formatter for fraction of Julian day number
  def day_fraction(jpd_time = 0.0)
    jpd_time.nil? ? jpd_time = 0.0 : jpd_time
    fraction = jpd_time + 0.5 - Integer(jpd_time)
    h = Integer(fraction * DAY_HOURS)
    m = Integer((fraction - h / DAY_HOURS) * DAY_MINUTES)
    s = Integer((fraction - h / 24.0 - m / DAY_MINUTES) * DAY_SECONDS)
    format('%02d:', h) +
      # ':' +
    format('%02d', m) +
      ':' +
      format('%02d', s)
  end

  # From string_formatters.rb
  # radians to time method
  def deg_to_time(radians = 0.0)
    radians.nil? ? radians = 0.0 : radians
    s, ihmsf = Helio.a2tf(3, radians)
    f_string(s, ihmsf[0], ihmsf[1], ihmsf[2], ihmsf[3])
  end

  # From string_formaters.rb
  # creates [h,m,s,ds] array from Time or DateTime
  def dt_parts(val)
    val.class == DateTime ? val = val.to_time.utc : val
    h  = val.hour
    m  = val.min
    s  = val.sec
    ds = val.usec / 1000
    #is = Integer(s)
    #ds = Integer((s - is).round(3) * 1000.0)
    [h, m, s, ds]
  end

  # From string_formaters.rb
  # creates [h,m,s,ds] from hours Float 
  def float_parts(val)
    hours = Integer(val % DAY_HOURS)
    mins = 60.0 * (val % DAY_HOURS - hours)
    imins = Integer(mins)
    secs = 60.0 * (mins - imins)
    isecs = Integer(secs)
    ds    = Integer((secs - isecs).round(3) * 1000.0)
    [hours, imins, isecs, ds]
  end

  # From string_formaters.rb
  # formats time components
  def format_time(h, m, s, ds)
    format('%02d', h)   +
      ':' +
      format('%02d', m) +
      ':' +
      format('%02d', s) +
      '.' +
      format('%3.3d', ds)
  end

  # From string_formaters.rb
  # formats degree string
  def f_string(sgn, deg, am, as, asd)
    sgn +
      format('%03d', deg) +
      ':' +
      format('%02d', am) +
      ':' +
      format('%02d', as) +
      '.' +
      format('%3.3d', asd)
  end

  # From string_formatters.rb
  # displays + or - sign
  def sign_min(min = 0.0)
    min.nil? ? min = 0.0 : min
    if min < 0.0
      sign = '-'
    else
      sign = '+'
    end
    sign
  end

  # From string_formatters.rb
  # String format for delta oblique
  def show_delta_oblique
    show_minutes(time_delta_oblique)
  end

  # From string_formatters.rb
  # String format for delta orbit
  def show_delta_orbit
    show_minutes(time_delta_orbit)
  end

  # From string_formatters.rb
  # Equation of time output for minutes and seconds
  def show_delta_total
    min_eot = time_delta_total
    sign = sign_min(min_eot)
    eot = min_eot.abs
    minutes = Integer(eot)
    seconds = (eot - minutes) * 60.0
    decimal_seconds = (seconds - Integer(seconds)) * 100.0
    min = format('%02d', minutes)
    sec = format('%02d', seconds)
    dec_sec = format('%01d', decimal_seconds)
    sign << min << 'm, ' << sec << '.' << dec_sec << 's'
  end

  # From string_formaters.rb
  # String formatter for + and - time
  def show_minutes(min = 0.0)
    min.nil? ? min = 0.0 : min
    time = Time.utc(1, 1, 1, 0, 0, 0, 0.0)
    time += (min.abs * 60.0)
    sign = sign_min(min)
    time.strftime("#{sign}%M:%S.%3N")
  end

  # From string_formaters.rb
  # String formatter for h:m:s display
  def time(dt = DT2000)
    dt = check_t_zero(dt)
    dt.class == DateTime ? ta = dt_parts(dt) : ta = float_parts(dt)
    format_time(ta[0], ta[1], ta[2], ta[3])
  end


end