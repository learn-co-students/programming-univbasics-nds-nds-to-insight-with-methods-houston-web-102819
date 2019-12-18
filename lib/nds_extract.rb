require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  pp nds
  result = {}
  row_index =0 
  while row_index < nds.length do
    d_names = nds[row_index]
    result[d_names[:name]] = gross_for_director(d_names)
    row_index+=1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  movie_gross = 0
  while movie_index < director_data[:movies].length do
    movie_gross += director_data[:movies][movie_index][:worldwide_gross]
    movie_index+=1
  end
  movie_gross
end

# ef gross_for_director(director_data)
#   total = 0
#   index = 0

#   while index < director_data[:movies].length do
#     total += director_data[:movies][index][:worldwide_gross]
#     index += 1
#   end

#   total

