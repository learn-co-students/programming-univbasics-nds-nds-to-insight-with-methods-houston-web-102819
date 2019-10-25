require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
  # [
  #  {:name => "string", :movies => [
  #    {:title, :studio, :worldwide_gross, :release year},{},{}]}
  #  {:,: => [{::::},{::::}{::::}]} 
def directors_totals(nds)
  result = {}
  index = 0
  while index < nds.length do
    result[nds[index][:name]] = gross_for_director(nds[index])
    index += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  dir_gross = 0
  mov_index = 0
  while mov_index < director_data[:movies].length do
    dir_gross += director_data[:movies][mov_index][:worldwide_gross]
    mov_index += 1
  end
  dir_gross
end
