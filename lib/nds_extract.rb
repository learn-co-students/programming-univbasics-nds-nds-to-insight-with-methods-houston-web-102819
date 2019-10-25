require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length
    director = nds[row_index][:name]
    column_index = 0
    total = 0
    while column_index < nds[row_index][:movies].length
      total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    row_index += 1
    result[director] = total
  end
  puts result
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

#KEY WORD, RETURN INTEGER
def gross_for_director(director_data)
  i = 0 
  total = 0
  while i < director_data[:movies].length
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  return total
end



#p director_data => see below
#expected: 1357566430
#got: {:movies=>[{:release_year=>1975, :studio=>"Universal", :title=>"Jaws", :worldwide_gross=>260000000}, ...studio=>"Buena Vista", :title=>"Lincoln", :worldwide_gross=>182207973}], :name=>"Stephen Spielberg"}



#def directors_totals(nds)
  #result = {}
  #row_index = 0
  #while row_index < nds.length
    #director = nds[row_index][:name]
    #column_index = 0
    #total = 0
    #while column_index < nds[row_index][:movies].length
      #total += nds[row_index][:movies][column_index][:worldwide_gross]
      #column_index += 1
    #end
    #row_index += 1
    #result[director] = total
  #end
  #puts result
  #return result
#end