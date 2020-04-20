# Class: Factory + Blueprint for creating dogs
#    Factory: something that allows me to create new dogs
#    Blueprint: something that tells me what any dog should have and what it can do
#      # should have => attributes
#      # what a dog can do => methods
class Dog
  def initialize(nombre, edad)
    @name = nombre
    @age = edad
  end

  def self.what_do_you_do
    'make dogs'
  end

  def make_sound
    'guau'
  end

  def full_info
    "#{@name} - #{@age}"
  end

  #attr_reader :name, :age
  #def name
  #  @name
  #end
  #
  #def age
  #  @age
  #end

  #attr_writer :age
  #def age=(new_age)
  #  @age = new_age
  #end

  attr_accessor :age
end

# Object / Instance: hunter is an object / instance
hunter = Dog.new('hunter', 2)
