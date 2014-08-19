Welcome to the equation_of_time wiki!

What's this you ask?

It is the actual number of degrees the Earth rotates in a 24 hour period.

It can be used to get a ratio for sidereal time calculations.

Look in the lib/eot/angles.rb file to see how it was calculated.

You could just tack that on to your observation time to get the next time.

rb --simple-prompt

1. >> require 'eot';eot = EqoT.new;eot.factor
2. >> "There are #{360 * eot.factor / 15.0} hours in a sidereal day."
3. >> "That is why on the next day the stars are about 4 minutes earlier."
4. >> obtime0 = Time.now
5. >> obtime1 = obtime0 + 360 * eot.factor / 15.0 * 3600
6. >> "Now you know when to look next time."

exit