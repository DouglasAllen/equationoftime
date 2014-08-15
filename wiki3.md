Welcome to the equation_of_time wiki!

rb --simple-prompt

1. >> require 'equation_of_time';eot = Equation_of_Time.new;eot.factor

What's this you ask?

It is the actual number of degrees the Earth rotates in a 24 hour period.

It can be used to get a ratio for sidereal time calculations.

1. >> "There are #{360 / eot.factor * 24} hours in a sidereal day."
2. >> "That is why on the next day the stars are about 4 minutes earlier."

Look in the lib/eot/angles.rb file to see how it was calculated.

You could just tack that on to your observation time to get the next time.

1. >> obtime0 = Time.now
2. >> obtime1 = obtime0 + 360 / eot.factor * 24 * 3600

Now you know when to look next time.