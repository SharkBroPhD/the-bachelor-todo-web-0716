require 'pry'

test_data = {
  "season 10" => {
         "name" => "Tessa Horst",
         "age" => "26",
         "hometown" => "San Francisco, CA",
         "occupation" => "Social Worker",
         "status" => "Winner"
  },

  "season 9" => 
      {
         "name"=>"Jennifer Wilson",
         "age" => "24",
         "hometown" => "Pembroke Pines, FL",
         "occupation" => "Teacher",
         "status" => "Winner"
      },
}
      
# def get_first_name_of_season_winner(data, season)
#   winner_name=[]
#   data.each do |hash_season,category|
#     if hash_season == season.to_s
#       category.each do |category, information|
#         if category == :status && information == "Winner"
#           winner_name<<data[hash_season][:name].split
#         end
#       end
#     end
#   end
#   binding.pry
#   puts winner_name.flatten[0]
# end

def get_first_name_of_season_winner(data, season)
  winner_name=[]
  data.each do |hash_season,category|
    # binding.pry
    if hash_season == season.to_s
      # binding.pry
      # category.each do |category,information|
        if category.include?("status")==true
          int_status=category["status"]
          if int_status=="Winner"
            winner_name<<category["name"].split
          end
        end
      # end
    end
  end
  puts winner_name.flatten[0]
end

get_first_name_of_season_winner(test_data, "season 9")