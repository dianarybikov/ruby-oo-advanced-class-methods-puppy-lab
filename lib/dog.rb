require 'pry'
class Dog
    attr_accessor :name
    
    @@all = []

    def initialize name
        @name = name
            save
    end
    
    def self.all
    @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        all.find_all do |dogs|
            puts dogs.name
    end
end
    def save
        @@all << self
    end

end

pluto = Dog.new("Pluto")
maddy = Dog.new("Maddy")
fido = Dog.new("Fido")

# binding.pry