require 'rspec'
require 'rspec/expectations'

require './wumpus'

describe Room do
    let(:simple_room) {Room.new(0, Array.new(2) { CanBeInRoom.new() }, [])}

    it "has a number" do
        simple_room.number.must_equal(0)
    end

    it "may contain items" do
        simple_room.hazards.exists?.must_equal(true)
        simple_room.hazards.each do |hazard|
            hazard.type.exists?.must_equal(true)
            hazard.power_level.exists?.must_equal(true)
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


