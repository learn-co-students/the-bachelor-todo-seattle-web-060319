require 'pry'

def get_first_name_of_season_winner(data, input_season)
    return_string = ""
    data.each do |season_string, season_data|
        #binding.pry
        if (season_string == input_season)
            season_data.each do |contestant|
                #binding.pry
                if contestant["status"] == "Winner"
                    #binding.pry
                    return_string = contestant["name"].split[0]
                end
            end
        end
    end
    return return_string
end
 
def get_contestant_name(data, occupation)
    data.each do |season_string, season_data|
        season_data.each do |contestant|
            if contestant["occupation"] == occupation
                return contestant["name"]
            end
        end
    end
end

def count_contestants_by_hometown(data, hometown)
    hometown_counter = {}
    data.each do |season_string, season_data|
        season_data.each do |contestant|
            if hometown_counter.key?(contestant["hometown"])
                hometown_counter[contestant["hometown"]] += 1
            else
                hometown_counter[contestant["hometown"]] = 1
            end
        end
    end
    return hometown_counter[hometown]
end

def get_occupation(data, hometown)
    data.each do |season_string, season_data|
        season_data.each do |contestant|
            if contestant["hometown"] == hometown
                return contestant["occupation"]
            end
        end
    end
end

def get_average_age_for_season(data, input_season)
    age_data = {}
    age_data["number_of_contestants"] = 0
    age_data["sum"] = 0
    data.each do |season_string, season_data|
        if (season_string == input_season)
            season_data.each do |contestant|
                age_data["number_of_contestants"] += 1
                age_data["sum"] = age_data["sum"] + contestant["age"].to_i
            end
        end
    end
    average_age = age_data["sum"].to_f / age_data["number_of_contestants"].to_f
    return average_age.round
end











