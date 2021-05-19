require 'rspec'
require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do
  it 'exists' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo).to be_a(Zoo)
  end

  it 'has readable attributes' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    expect(zoo.name).to eq("Bronx Zoo")
    expect(zoo.address).to eq("2300 Southern Blvd")
  end

  it 'has an animal count' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    animal_3 = Animal.new("Capybara", 100, 150)
    animal_4 = Animal.new("Dolphin", 150, 200)
    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)
    zoo.add_animal(animal_3)
    zoo.add_animal(animal_4)
    require "pry"; binding.pry
    expect(zoo.animal_count).to eq(4)

  end


end
