class CanBeInRoom
    def initialize()
        self.set_type
        @power_level = rand(1..10)
    end

    def set_type
        type_num = rand(0..5)

       case type_num
            when 0
            @type = "Demon"
            @article = "a"
            @threat = true
            when 1
            @type = "Bottomless Pit"
            @article = "a"
            @threat = true
            when 2
            @type = "Unfriendly Spiders"
            @article = "many"
            @threat = true
            when 3
            stuff_type = rand(0..5)
            stuff_type case
                when 0
                stuff = "Chocolate"
                @threat = false
                when 1
                stuff = "Gold"
                @threat = false
                when 2
                stuff = "Comfy Quilts"
                @threat = false
                when 3
                stuff = "Nothing"
                @threat = true
                when 4
                stuff = "Indiscriminately Piled Junk"
                @threat = false
                when 5
                stuff = "Weapons"
                @threat = false
            end
            @article = "a"
            @type = "Chest, Full of #{stuff}"
            when 4
            @article = ""
            @type = "#{rand(0..5).to_s} Goblins"
            @threat = true
            when 5
            @article = ""
            @type = "A Rabbit! And it's absolutely ruthless!"
            @threat = true
        end
    end

    def get_type
        @type
    end

    def get_power_level
        @power_level
    end

    def get_article
        @article
    end

    def is_threat?
        @threat
    end

    def acquire
        unless self.is_threat?
            self
        end
    end
end

class Room
    def initialize(number, hazards, neighboring_rooms)
        @number = number
        @hazards = hazards
        @neighboring_rooms = neighboring_rooms
    end

    def explore()
        puts "This room is No. #{@number} and it has: "
        @hazards.each do |h|
            puts "   - #{h.get_article} #{h.get_type} with Power Level #{h.get_power_level}"
            puts "(threatening you!)" if h.is_threat?
        end
        puts "   - #{@neighboring_rooms.length} doors leading elsewhere"
        puts "\n\nWhat would you like to do?"
    end
end

class Player
    def initialize(all_rooms)
        @rooms_explored = []
        @power_level = 1
        @carrying = ["a flashlight"]

        max_rooms = all_rooms.length - 1
        @location = rand(0..max_rooms)

        puts "You're in the maze, and you're in Room #{@location}."
        puts "You're carrying "
        @carrying.each do |c|
            puts "   - #{c}"
        end
        puts "Exploration timeeeeeeeeeeeeee!"
    end

    def enter_room(number)

    end
end

class Main

end

