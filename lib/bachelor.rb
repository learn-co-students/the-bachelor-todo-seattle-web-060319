def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
    return people["name"].split(" ")[0]
  end    # code here
end

def get_contestant_name(data, occupation)
  data.each do |people, stats|
    stats.each do |seasons|
      if seasons["occupation"] == occupation
        return seasons["name"]
      end
    end
  end    # code here
end

def count_contestants_by_hometown(data, hometown)
  town = 0
  data.each do |season, stats|
    stats.each do |info|
      if info["hometown"] == hometown
        town += 1
      end
    end
  end
  town# code here
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end# code here
end

def get_average_age_for_season(data, season)
  age = 0
  contestants = 0
  data[season].each do |contestant|
    age += contestant["age"].to_f
    contestants += 1
  end
(age / contestants).round(0)
end
