require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_name=[]
  data.each do |hash_season,category|
    # binding.pry
    if hash_season == season.to_s
      # binding.pry
      category.each do |category,information|
        if category.include?("status")==true
          int_status=category["status"]
          if int_status=="Winner"
            winner_name<<category["name"].split
          end
        end
      end
    end
  end
  return winner_name.flatten[0]
end

def get_contestant_name(data, occupation)
  job_name=[]
  data.each do |hash_season,category|
    category.each do |category,information|
      if category.include?("occupation")==true
        int_occupation=category["occupation"]
        if int_occupation=="#{occupation}"
          job_name<<category["name"]
        end
      end
    end
  end
  return job_name[0]
end

def count_contestants_by_hometown(data, hometown)
  hometown_count=[]
  data.each do |hash_season,category|
    category.each do |category,information|
      if category["hometown"] == hometown
        hometown_count<<category["hometown"]
      end
    end
  end
  return hometown_count.count
end

def get_occupation(data, hometown)
  occupations=[]
  data.each do |hash_season,category|
    category.each do |category,information|
      if category["hometown"]==hometown
        occupations<<category["occupation"]
      end
    end
  end
  return occupations[0]
end

def get_average_age_for_season(data, season)
  ages=[]
  data.each do |hash_season,category|
    if hash_season == season
      category.each do |category, information|
        ages<<category["age"].to_i
      end
    end
  end
  average_age=0
  ages.each do |age|
    average_age+=age
  end
  return (average_age/ages.count.to_f).round*1
end
 