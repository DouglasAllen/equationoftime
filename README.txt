Installation:    
 
Fork it and Clone it:

	$ git clone git@github.com:DouglasAllen/equationoftime-2.3.8.git
   
Enter dir:

	$ cd  equation_of_time

Execute:

	$ bundle install

Run minitest tests:

	$ rake

Build gem:

	$ gem build equationoftime.gemspec    

Local install of gem build:
 
	$ gem install equationoftime-2.3.8.gem -l


Add this line to your application's Gemfile:

	gem 'equationoftime'

And then execute:

	$ bundle

Or install it yourself as:

	$ gem install equationoftime  

Usage:

        $ irb --simple-prompt

        require 'eot'
        eot = EqoT.new  #(note: in irb you'll see nutation data loading. This is normal.)
        eot.string_eot()


Notes:

1. Many other methods are useful. Try eot.methods
2. Peek inside /lib directory 
3. Run the provided examples.
4. Look in the wikis

Suggestions:

1. Itererate through a years worth of dates and compute analemma data. see: http://equationoftime.herokuapp.com/analemma
2. A file is included in examples named analemma_data.rb and may help you get started.
3. see the astro dog (https://github.com/DouglasAllen/Sinatra-projects/tree/master/astro_dog) project here and the web post of it on Heroku (http://equationoftime.herokuapp.com/) for more info about the Equation of Time.
4. see the wikis for more usage examples.

Contributing:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
 
