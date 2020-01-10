

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
  array.each {|i| new_hash[i] = {
    :color => [],
    :gender => [],
    :lives => []  
  }}
  #puts new_hash
  #new_hash
  new_hash.each do |hash_name, hash_name_hash|
    hash_name_hash.each do |new_inner_hash_key, new_hash_inner_array|
      data.each do |data_key_hash1, data_hash_inner_hash|
        data_hash_inner_hash.each do |data_hoh_key, data_hoh_name_array|
          data_hoh_name_array.each do |name|
            hash_name_str = hash_name.to_s
            if name == hash_name_str && data_key_hash1 == new_inner_hash_key
              attribute = data_hoh_key.to_s
              new_inner_hash_array << attribute
              puts new_inner_hash_array
            end
          end
        end
      end
    end
  end
  puts new_hash
  new_hash
end


            
            #puts "value1 key2 is #{key2} and value2 is #{value2}"

  
  
#   new_hash.each do |key, value|
#     #puts "new hash key is #{key} value is #{value}"  
#     value.each do |keya, valuea|
#       #puts "value keya is #{keya} value valuea is #{valuea}"
#       data.each do |key1, value1|
#         #puts "data key1 is #{key1} value1 is #{value1}"
#         if key1 == keya 
#           value1.each do |key2, value2|
#             #puts "value1 key2 is #{key2} and value2 is #{value2}"
#               if key == value2
#                 valuea.push(key2)
#                 puts valuea
#           end
#         end
#       end
#     end
#   end 
#   puts new_hash 
#   new_hash
# end 
# end

    # data[value1].each_value do |value2|
    #   puts "/ttvalue 2 is #{value2}" 
    #   data[value2].each_value do |value3|
    #     puts "/t/t/t value3 is #{value3}"
    #     data[value2].each do |value4, value5|
    #       puts "value 4 is #{value4} and value 5 is #{value5}"
    #     end
    #   end
    # end



   
  
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