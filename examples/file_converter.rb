# the file this data comes from 'Circular_179.pdf' IAU 2000A Nutation Series
# the first 678 lines are for lunisolar data

require 'safe_yaml'

# make array elements from each line of the file
filename = "nutation_table5_3a.txt"
temp_array = []
data = File.readlines(filename)

# clean out whitespace and new line breaks 
data.each {|i| temp_array << i.strip}

# make new muti-dimensional data array
data = []
temp_array.each {|i| data << i.split}

# save the array in a yaml file
File::open( "nutation_table5_3a.yaml", "w" ) do |f|
  YAML.dump( data, f )
end

# show the new data file contents as an array.
data = []
File.open( "nutation_table5_3a.yaml" )  do |f|
  YAML.load_documents( f ) do |doc|
    data = doc
    p data
  end
  p f
end
