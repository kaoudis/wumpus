require 'rspec'
require 'rspec/expectations'

require './wumpus'

describe Room do
    let(:simple_room) {Room.new(0, Array.new(2) { CanBeInRoom.new() }, [])}

    it "a simple room has a number" do
        expect(simple_room.get_number()).to equal(0)
    end

    it "a simple room may contain hazardous items" do
        expect(simple_room.get_hazards().empty?).to be false
        simple_room.get_hazards().each do |hazard|
            expect(hazard.get_type().empty?).to be false
            expect(hazard.get_power_level()).to be > 0
        end
    end

    let(:fancy_room) {Room.new(0, Array.new(2) { CanBeInRoom.new() }, Array.new(2) {Room.new(rand(1..3), Array.new(2) { CanBeInRoom.new() }, [])})}

    it "has two-way connections to neighbors"
    it "knows the numbers of all neighboring rooms"
    it "can choose a neighbor randomly"
    it "is not safe if it has hazards"
    it "is not safe if its neighbors have hazards"
    it "is safe when it and its neighbors have no hazards"
end


