##
# class Main file = string_formatters.rb:
# methods for display of angles.
class Main
  # From string_formaters.rb
  # String formatter for fraction of Julian day number
  def day_fraction(jpd_time = 0.0)
    jpd_time.nil? ? jpd_time = 0.0 : jpd_time
    fraction = jpd_time + 0.5 - Integer(jpd_time)
    h = Integer(fraction * Eot::DAY_HOURS)
    m = Integer((fraction - h / Eot::DAY_HOURS) * Eot::DAY_MINUTES)
    s = Integer((fraction - h / 24.0 - m / Eot::DAY_MINUTES) * Eot::DAY_SECONDS)
    format('%02d:%02d:%02d', h, m, s)
  end

  # From string_formatters.rb
  # radians to time method
  def deg_to_time(radians = 0.0)
    radians.nil? ? radians = 0.0 : radians
    hours = radians * Eot::R2D / 15.0
    sgn = hours < 0 ? '-' : '+'
    h = hours.abs.floor
    m = ((hours.abs - h) * 60.0).floor
    s = ((((hours.abs - h) * 60.0) - m) * 60.0).floor
    ms = ((((((hours.abs - h) * 60.0) - m) * 60.0) - s) * 1000.0).round(0)
    f_string(sgn, h, m, s, ms)
  end

  # From string_formaters.rb
  # creates [h,m,s,ds] array from Time or DateTime
  def dt_parts(val)
    val.class == DateTime ? val = val.to_time.utc : val
    h  = val.hour
    m  = val.min
    s  = val.sec
    ds = val.usec / 1000
    # is = Integer(s)
    # ds = Integer((s - is).round(3) * 1000.0)
    [h, m, s, ds]
  end

  # From string_formaters.rb
  # creates [h,m,s,ds] from hours Float
  def float_parts(val)
    hours = Integer(val % Eot::DAY_HOURS)
    mins = 60.0 * (val % Eot::DAY_HOURS - hours)
    imins = Integer(mins)
    secs = 60.0 * (mins - imins)
    isecs = Integer(secs)
    ds    = Integer((secs - isecs).round(3) * 1000.0)
    [hours, imins, isecs, ds]
  end

  # From string_formaters.rb
  # formats time components
  def format_time(h, m, s, ds)
    format('%02d:%02d:%02d.%3.3d', h, m, s, ds)
  end

  # From string_formaters.rb
  # formats degree string
  def f_string(sign, deg, min, sec, ms)
    sign + format('%03d:%02d:%02d.%3.3d', deg, min, sec, ms)
  end

  # From string_formatters.rb
  # displays + or - sign
  def sign_min(min = 0.0)
    min.nil? ? min = 0.0 : min
    sign = min < 0.0 ? '-' : '+'
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
  def time(dt = Eot::DT2000)
    dt = check_t_zero(dt)
    ta = dt.class == DateTime ? dt_parts(dt) : float_parts(dt)
    format_time(ta[0], ta[1], ta[2], ta[3])
  end
end
