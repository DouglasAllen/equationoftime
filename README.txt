= equation_of_time

[![Gem Version](https://badge.fury.io/rb/equation_of_time.png)](http://badge.fury.io/rb/equation_of_time)
##[*Graphic Plot 1*](https://github.com/DouglasAllen/equation_of_time/blob/master/examples/figure_1.jpg) created from [*equation_of_time.py*](https://bitbucket.org/cmcqueen1975/sundials/src/26a0f54a7c18fc3b54a3a4cff4f79192fcef1a91/equation_of_time.py?at=default)
##[*Graphic Plot 2*](https://github.com/DouglasAllen/equation_of_time/blob/master/examples/Equation_of_Time.jpg) created from [*R script*](http://en.wikipedia.org/wiki/File:Zeitgleichung.png)
##[*Solar Time*](http://www.maa.mhn.de/Scholar/times.html#solar)
##[*Web Calculator*](http://www.nature1st.net/bogan/astro/time/jsjdetst.html)
# Equation_of_Time
##[*Equation of Time download*](https://rubygems.org/gems/equation_of_time)
###Using the Julian Period Day Number system for a date object Date.jd 
###Equation of Time for that date will be calculated at UTC Noon.
###Review date.rb in older Ruby libraries or /src/ruby-1.9.3-px/ext/date/ for more info. 
##[*Equation of Time Ruby Sinatra Website*](http://equationoftime.herokuapp.com/)
## Installation    
 
Fork it and Clone it:

	$ git clone git@github.com:DouglasAllen/equation_of_time.git
   
Enter dir:

	$ cd  equation_of_time

Execute:

	$ bundle install

Run rspec tests:

	$ rake

Build gem:

	$ gem build equation_of_time.gemspec    

Local install of gem build:
 
	$ gem install equation_of_time-2.3.6.gem -l


Add this line to your application's Gemfile:

	gem 'equation_of_time'

And then execute:

	$ bundle

Or install it yourself as:

	$ gem install equation_of_time  Note: newer versions not deployed yet.

## Usage

irb --simple-prompt

1. >> require 'equation_of_time'
2. >> eot = Equation_of_Time.new #(note: in irb you'll see nutation data loading. This is normal because nutation uses it.)
3. >> Time.now.utc.to_s + " " + eot.now.to_s


## Notes

1. Many other methods are useful. Try eot.methods
2. Peek inside /lib directory 
3. Run the provided examples.
4. Look in the wikis

Suggestions:

1. Itererate through a years worth of dates and compute analemma data. see: http://equationoftime.herokuapp.com/analemma
2. A file is included in examples named analemma_data.rb and may help you get started.
3. see the [*astro dog*](https://github.com/DouglasAllen/Sinatra-projects/tree/master/astro_dog) project here and the web post of it on [*Heroku*](http://equationoftime.herokuapp.com/) for more info about the Equation of Time.
4. see the wikis for more usage examples.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
 
