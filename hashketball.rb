require "pry"
def game_hash
  ash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
      "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
  },
  :away => {:team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
      "Bismack Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
      },
      "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      "Kemba Walker" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
      }
     }
    }
   }
end

def num_points_scored (name) 
  score = 0
  game_hash.each do |home_away, team_data|
    team_data[:players].each do |player_name, player_data|
      
      player_name == name ? score = player_data[:points] : nil
      end
    end
       
   return score
end

def shoe_size (name)
  shoe = 0
  game_hash.each do |home_away, team_data|
    team_data[:players].each do |player_name, player_data|
      
      player_name == name ? shoe = player_data[:shoe] : nil
      end
    end
       
   return shoe 
  
end

def team_colors (teem_name)
  team_colors = []
  game_hash.each do |home_away, team_data|
    
    team_data[:team_name] == teem_name ? team_colors = team_data[:colors] : nil
    end
       
   return team_colors
  
end 

def team_names 
  
  teem_n =[]
  game_hash.each do |home_away, team_data|
    # binding.pry 
      teem_n << team_data[:team_name]
      end
       
   return teem_n
end 

def player_numbers (name)
  player_n = []
  game_hash.each do | h, team_data |
    team_data[:players].each do |player_name, player_data|
      team_data[:team_name] == name ? player_n << player_data[:number] : nil
      # binding.pry 
    end 
  end 
  player_n
end 

def player_stats(name)
  state = {}
  game_hash.each do | h, team_data |
    team_data[:players].each do |player_name, player_data|

      player_name == name ? state = player_data : nil
      # binding.pry 
    end 
  end 
  state
 end 
 
def big_shoe_rebounds
  shoe = 0
  result = 0
  game_hash.each do | h, team_data |
    team_data[:players].each do |player_name, player_data|
      if player_data[:shoe] > shoe 
        shoe = player_data[:shoe]
        
       result = player_data[:rebounds]
      end
      # binding.pry 
    end 
  end 
  result
end 

def most_points_scored
  points = 0
  result = 0
  game_hash.each do | h, team_data |
    team_data[:players].each do |player_name, player_data|
      if player_data[:points] > points 
        points = player_data[:points]
        
       result = player_name
      end
      
    end 
  end 
  result
end 

def winning_team
  team_1 = 0
  team_2 = 0 
  result = 0
  game_hash.each do | h, team_data |
    team_data[:players].each do |player_name, player_data|
      if team_data[:team_name] == "Brooklyn Nets"
        team_1 =+ player_data[:points]
      else
        team_2 =+ player_data[:points]
      
      end
      if team_1 > team_2 
        result = "Brooklyn Nets"
        else
        result = team_data[:team_name]
      end 
    end 
  end 
  
  
  result 
end 

def player_with_longest_name
  lenght_name = 0
  result = ""
  game_hash.each do | h, team_data |
    team_data[:players].each do |player_name, player_data|
      # shoe = player_data[:shoe]
      if player_name.length > lenght_name 
        lenght_name = player_name.length
        
       result = player_name
      end
      
    end 
  end 

  result
end 

def long_name_steals_a_ton?
  longest_name = player_with_longest_name
  steals = 0 
  game_hash.each do | h, team_data |
    team_data[:players].each do |player_name, player_data|
      # binding.pry
      if player_data[:steals] > steals 
       steals = player_data[:steals]
       
      end
      if team_data[:players][longest_name]
        team_data[:players][longest_name][:steals] > steals
        
      end
    end
  end 
end 