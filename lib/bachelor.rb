require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |individual|
    if individual["status"] == "Winner"
       return individual["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, person|
    person.each do |info|
      if info["occupation"] == occupation
          return info["name"]
             #binding.pry
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, person|
    person.each do |info|
      if info["hometown"] == hometown 
        counter += 1
      end 
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
