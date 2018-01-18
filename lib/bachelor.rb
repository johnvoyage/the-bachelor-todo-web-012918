require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |key, value|
    if key["status"] == "Winner"
      first_name = key["name"].split
      winner = first_name[0]
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  cont_name = ""
  data.each do |season, hash|
    i = 0
    while i < hash.length do
      if hash[i]["occupation"] == occupation
        cont_name = hash[i]["name"]
      end
      i += 1
    end
  end
  cont_name
end

def count_contestants_by_hometown(data, hometown)
  count_home = 0
  data.each do |season, hash|
    i = 0
    while i < hash.length do
      if hash[i]["hometown"] == hometown
        count_home += 1
      end
      i += 1
    end
  end
  count_home
end

def get_occupation(data, hometown)
  cont_job = ""
  data.each do |season, hash|
    i = 0
    while i < hash.length do
      if hash[i]["hometown"] == hometown
        cont_job = hash[i]["occupation"]
        break
      end
      i += 1
    end
  end
  cont_job
end

def get_average_age_for_season(data, season)
  total_count = 0
  total_age = 0
  data[season].each do |hash, nada|
    total_age += hash["age"].to_i
    total_count += 1
  end
  avg_age = (total_age/total_count.to_f).round
  avg_age
end
