require 'pry'

def nyc_pigeon_organizer(data)
  pigeons_by_name = {}
  name_array = []

  data.each do |k, v|
    name_array.push v.values
    name_array.flatten.uniq!.each do |name|
      data.each do |k, v|
      pigeons_by_name[name] = {:color => [], :gender => [], :lives => []}
    # get name of first, second, third keys in hash instead of hardcoding?
    end
  end
end

pigeons_by_name
end
