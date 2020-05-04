require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |key|
    return key["name"].split(" ").first if key["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |key1|
      return key1["name"] if key1["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |_key, value|
    value.each do |key1|
      if key1["hometown"] == hometown
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
