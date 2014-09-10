[![Gem Version](https://badge.fury.io/rb/equationoftime.png)](http://badge.fury.io/rb/equationoftime)
##[*RDocs*](http://rubydoc.info/gems/equationoftime/4.0.1/frames)
##[*Graphic Plot 1*](https://github.com/DouglasAllen/equationoftime/blob/master/examples/figure_1.jpg) created from [*equation_of_time.py*](https://bitbucket.org/cmcqueen1975/sundials/src/26a0f54a7c18fc3b54a3a4cff4f79192fcef1a91/equation_of_time.py?at=default)
##[*Graphic Plot 2*](https://github.com/DouglasAllen/equationoftime/blob/master/examples/Equation_of_Time.jpg) created from [*R script*](http://en.wikipedia.org/wiki/File:Zeitgleichung.png)
##[*Solar Time*](http://www.maa.mhn.de/Scholar/times.html#solar)
##[*Web Calculator*](http://www.nature1st.net/bogan/astro/time/jsjdetst.html)
# equationoftime gem
##[*Equation of Time download*](https://rubygems.org/gems/equationoftime)
##[*Equation of Time Ruby Sinatra Website*](http://equationoftime.herokuapp.com/)

#Installation:    
 
Fork it and Clone it:

	$ git clone git@github.com:DouglasAllen/equationoftime.git
   
Enter dir:

	$ cd  equationoftime

Execute:

	$ bundle install

Run minitest tests:

	$ rake

Build gem:

	$ rake compile:eot   

Local install of gem build:
 
	$ rake install


Add this line to your application's Gemfile:

	gem 'equationoftime'

And then execute:

	$ bundle install

Or install it yourself as:

	$ gem install equationoftime

#Usage:

	$ irb --simple-prompt

	require 'eot'
	eot = Eot.new
	eot.string_eot()

#[Wikis](https://github.com/DouglasAllen/equationoftime/blob/master/wiki.md)


Notes:

1. for other time equations see:[*gist 2032003*](https://gist.github.com/2032003)


Suggestions:

1. http://equationoftime.herokuapp.com/analemma Itererates through a years worth of dates and computes analemma data.
2. A file is included in examples named analemma_data_generator.rb and may help you get started.
3. See the [*astro dog*](https://github.com/DouglasAllen/Sinatra-projects/tree/master/astro_dog) project here and the web post of it on [*Heroku*](http://equationoftime.herokuapp.com/) for more info about the Equation of Time.
4. See the wikis for more usage examples.

Contributing:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
 
