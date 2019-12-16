class Cult
    attr_accessor :name, :location, :founding_year, :slogan

    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location 
        @founding_year = founding_year 
        @slogan = slogan 
    end 

    def recruit_follower(follower) # make new follower f6, c2.recruit_follower(f6), c2.followers
        BloodOath.new(self, follower)
    end 

    def cult_population
        followers.length
    end 

    def self.all # Cult.all
        BloodOath.all.map { |bloodoath| bloodoath.cult }.uniq
    end 

    def self.find_by_name(name)
        self.all.select { |cult| cult.name == name }
    end 

    def self.find_by_location(location)
        self.all.select { |cult| cult.location == location }
    end 

    def self.find_by_founding_year(founding_year)
        self.all.select { |cult| cult.founding_year == founding_year } 
    end 

    def bloodoaths #c2.bloodoaths 
        BloodOath.all.select { |bloodoath| bloodoath.cult == self }
    end 

    def followers #c3.followers
        bloodoaths.map { |bloodoath| bloodoath.follower }
    end 

    # START OF ADVANCED METHODS 

    def average_age
        follower_ages = followers.map { |follower| follower.age }

        average = (follower_ages.reduce(0) { |a, v| a + v } / follower_ages.count).to_f
    end 

    def my_followers_mottos
        followers.map { |follower| follower.life_motto }
    end 

    def self.least_popular 
        # I be strugglin over here 
    end 
end 



