def get_first_name_of_season_winner(data, season)
  # code here
  season_array = data[season]
  season_array.each do |contestant_hash|
  	if contestant_hash["status"] == "Winner"
  		winner = contestant_hash["name"].split[0]
  		return winner
  	end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, season_array|
  	season_array.each do |contestant_hash|
  		if contestant_hash.values.include?(occupation) == true
  			return contestant_hash["name"]
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
    data.each do |season, season_array|
  	season_array.each do |contestant_hash|
  		if contestant_hash.values.include?(hometown) == true
  			counter += 1
  		end
  	end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
    data.each do |season, season_array|
  	season_array.each do |contestant_hash|
  		if contestant_hash.values.include?(hometown) == true
  			return contestant_hash["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  counter = 0
  season_array = data[season]
  season_array.each do |contestant_hash|
  	age_sum += contestant_hash["age"].to_f
  	counter += 1
  end
  return (age_sum/counter).round
end
