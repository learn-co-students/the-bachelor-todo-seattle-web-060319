def get_first_name_of_season_winner(data, season)
  name = ""
  data[season].each do |hash|
    hash.each do |key, value|
      if value == "Winner"
        name = hash["name"]
      end
    end
end
name.split(" ")[0]
end


def get_contestant_name(data, occupation)
  name = "" 
  data.each do |season, person|
    person.each do |hash|
      hash.each do |key, value|
        if value == occupation
          name = hash["name"]
        end
      end
    end
  end
  name
end	


def count_contestants_by_hometown(data, hometown)
  
  count = 0 
  data.each do |season, person|
    person.each do |hash|
      if hash["hometown"] == hometown
        count += 1 
      end
    end
  end
  count
end

def get_occupation(data, hometown)
   occupation = ""
  data.each do |season, person|
    person.each do |hash|
      if hash["hometown"] == hometown
        occupation = hash["occupation"]
        break
      end
    end
  end
  
  occupation
end	


def get_average_age_for_season(data, season)
  ages = 0  
  size = data[season].length 
  data[season].each do |hash|
    ages += hash["age"].to_f
  end
  (ages / size).round
end
