require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = {}

  data.each do |attribute, details| #attribute:color/gender/lives, details: purple.subway/female
    details.each do |option, names_array| # option: purple/subway/female
      names_array.each do |name| # get down to name of pigeon level
        if pigeons.has_key?(name) # is the pigeon name in the new hash?
          if pigeons[name].has_key?(attribute) # yes, does the pigeon have the attribute key?
            pigeons[name][attribute] << option.to_s # yes, push any remaining options into array
          else
            pigeons[name][attribute] = [option.to_s] # no, add the attribute keys, store the details in an array
          end
        else  pigeons[name]= {attribute => [option.to_s]} # no, pigeon not in hash so add it with a hash containing properties
        end
      end
    end
  end

pigeons
end

# I spent too long trying to build the hash then put the elements into it.
# Instead, ask is the pigeon in the new hash?
# If not, add it with its properties
# otherwise, add the properties to the existing pigeon key.
