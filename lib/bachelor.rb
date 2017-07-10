require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |number, contestants|
    if number == season
      contestants.each do |contestant|
        contestant.each do |info, value|
          if contestant["status"] == "Winner"
            return contestant["name"].split.first
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |number, contestants|
    contestants.each do |contestant|
        if contestant["occupation"] == occupation
          return contestant["name"]
        end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant|
        if contestant["hometown"] == hometown
          counter+=1
        end
      end
  end
  return counter
end


def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestant_count = 0
  total_age = 0
  data[season].each do |contestant|
    total_age+=contestant["age"].to_f
    contestant_count+=1
  end
  return (total_age / contestant_count).round
end
