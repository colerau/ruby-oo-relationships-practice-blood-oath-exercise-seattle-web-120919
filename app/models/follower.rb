class Follower
    attr_accessor :name, :age, :life_motto

    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto 
    end 

    def join_cult(cult) # make new cult c6, f2.join_cult(c6), f2.cults 
        BloodOath.new(cult, self)
    end 

    def self.all # Follower.all 
        BloodOath.all.map { |bloodoath| bloodoath.follower }.uniq 
    end 

    def bloodoaths # f4.bloodoaths
        BloodOath.all.select { |bloodoath| bloodoath.follower == self }
    end 

    def cults # f5.cults 
        bloodoaths.map { |bloodoath| bloodoath.cult }
    end 

    def self.of_a_certain_age(age)
        self.all.select { |follower| follower.age >= age }
    end 
end 


