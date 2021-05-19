class Zoo

  attr_reader :name, :address, :city, :state, :zip_code, :animal_count
  def initialize(name, address, city, state, zip_code)
    @name = name
    @address = address
    @city = city
    @state = state
    @zip_code = zip_code
    @animal_count = 0
    @inventory = {}
  end

  def animal_count
    inventory.count
  end

  def add_animal(animal)
    # inventory.each
    #add keys and values via 1 method argument?????
    animal.each {|key, val| @inventory[:type, :weight, :age] = animal}
    # animal_count += 1
  end

  def inventory

  end

end
