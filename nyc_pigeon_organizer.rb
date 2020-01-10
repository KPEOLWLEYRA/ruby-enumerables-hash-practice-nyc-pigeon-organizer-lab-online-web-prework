

def nyc_pigeon_organizer(data)
  new_hash = {}
  array = [] 
  pigeon_male = data[:gender][:male]
  pigeon_female = data[:gender][:female]
  i = 0 
  while i < pigeon_male.length do 
    array.push(pigeon_male[i])
    i += 1 
  end
  i = 0 
  while i < pigeon_female.length do 
    array.push(pigeon_female[i])
    i +=1 
  end
  array.each {|i| new_hash[i] = nil}
  puts new_hash
  new_hash
  #new_hash.each do |i, value|
  data.each do |key, value1|
    puts "/tvalue1 is  #{value1} key is #{key}"
    data[value1].each_value do |value2|
      puts "/ttvalue 2 is #{value2}" 
      data[value2].each_value do |value3|
        puts "/t/t/t value3 is #{value3}"
        data[value2].each do |value4, value5|
          puts "value 4 is #{value4} and value 5 is #{value5}"
        end
      end
    end
  end
end 






  #^create keys 
  # #{
  #   :color => [],
  #   :gender => [],
  #   :lives => []
  # }
   
  
  # puts new_hash 
  # new_hash
  # new_hash.each do |i, value|
  #   puts value
  #   data.each_value do |value1|
  #     puts value1
  #       data[value1].each_value do |value2|
  #         puts value2 
  #       data[value2].each_value do |m|
  #         puts m
  #         if data[m] == new_hash[i]
  #           new_hash[i] << data[m]
  #         end
  #       end
  #     end
  #   end
  #   puts new_hash
  # end
    # data[:color].each do |color|
    #   data[:color]
    #   if color_attr == new_hash[i]
    #     new_hash[i][:color] << color_attr
    #   end 
    # end
    # data[:gender].each do |mof, mof_attr|
    #   if mof_attr == new_hash[i]
    #     new_hash[i][:gender] << mof_attr
    #   end
    # end
    # data[:lives].each do |city|
    #   data[:lives][city].each do |j|
    #     if j == new_hash[i]
    #       new_hash[i][:lives]<< j



pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

#puts pigeon_data[:gender][:male][0] 
#puts pigeon_data[:gender][:female][0]

nyc_pigeon_organizer(pigeon_data)