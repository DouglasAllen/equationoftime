irb --simple-prompt

1. >> require 'eot';eot = EqoT.new # nutation data loads and data flys by on the irb console.
2. >> loop do
3. >> puts "#{Time.now} #{eot.show_minutes(eot.now)}"
4. >> sleep 11  # It would be neet to get the slope of the curve to adjust this accordingly for the milisecond change.
5. >> end
