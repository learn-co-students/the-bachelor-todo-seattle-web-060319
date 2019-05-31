def get_first_name_of_season_winner(data, season)
  
  winner = data[season].find {|hash| hash["status"] == "Winner"}
  
  winner["name"].split.first
  
end

def get_contestant_name(data, occupation)
  person = nil
  data.each do |season, contestant_array|

  person ||= contestant_array.find {|hash| hash["occupation"] == occupation}

  end
  person["name"]
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_array|
    contestant_array.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
   match = nil
  data.each do |season, contestant_array|
    contestant_array.each do |hash|
      
      match ||= contestant_array.find {|hash| hash["hometown"] == hometown}
    end
  end
  match["occupation"]
end


def get_average_age_for_season(data, season)
  arr = []
  data[season].each do |hash|
    arr << hash["age"].to_i
  end
  sum = 0
  arr.each {|x| sum += x}
  average = sum.to_f/(arr.length)
  average.round
end

