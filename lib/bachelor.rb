require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |bach_season, bach_stats|
    if season == bach_season
      bach_stats.each do |k|
        # binding.pry
        if k["status"] == "Winner"
          return k["name"].split.first
        end
      end
    end
  end

end

def get_contestant_name(data, occupation)
  # code here
  data.each do |bach_season, bach_stats|
    bach_stats.each do |k|
      if k["occupation"] == occupation
        return k["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |bach_season, bach_stats|
    bach_stats.each do |k|
      if k["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
first_hometown = []
  data.each do |bach_season, bach_stats|
    bach_stats.each do |k|
      if k["hometown"] == hometown
        first_hometown << k["occupation"]
      end
    end
  end
  first_hometown[0]
end

def get_average_age_for_season(data, season)
  age = 0
  count = 0
    data.each do |bach_season, bach_stats|
      if bach_season == season
          bach_stats.each do |k|
            age += k["age"].to_f
            count += 1

          end
      end

    end
    return (age / count).round
end
