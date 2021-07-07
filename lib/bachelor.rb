def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |k, array|
    if k == season
      array.each do |lady|
        lady.each do |stat_id, stat_val|
          if lady["status"] == "Winner"
            first_name = ""
            name_arr = lady["name"].split(" ")
            first_name += name_arr[0]
            return first_name
          end
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |lady|
      lady.each do |stat_id, stat_val|
        if lady["occupation"] == occupation
          return lady["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |lady|
      if lady["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |lady|
      lady.find do |stat_id, stat_val|
        if lady["hometown"] == hometown
          return lady["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_count = 0
  lady_count = 0

  data.each do |k, array|
    if k == season
      array.each do |lady|
        lady_count += 1
        age_count += lady["age"].to_f
      end
    end
  end
  return (age_count / lady_count).round
end
