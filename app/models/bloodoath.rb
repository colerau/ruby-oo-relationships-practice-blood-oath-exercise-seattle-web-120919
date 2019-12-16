class BloodOath 
    attr_accessor :cult, :follower, :initiation_date

    @@all = []

    def initialize(cult, follower, initiation_date = 20191216)
        @cult = cult 
        @follower = follower
        @initiation_date = initiation_date 
        @@all << self 
    end 

    def self.all
        @@all 
    end 
end 

