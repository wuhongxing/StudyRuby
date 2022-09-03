# p Enumerable.instance_methods(false)
# p Comparable.instance_methods(false)

class Person
  attr_reader :name
  include Comparable

  def initialize(name)
    @name = name
  end

  def <=> person
    name <=> person.name
  end
end

p1 = Person.new('aaa')
p2 = Person.new('bbb')
p3 = Person.new('ccc')
p p1 < p2
p p2 < p3

class People
  attr_accessor :people
  include Enumerable

  def initialize(people)
    @people = people
  end

  # def each(&block)
  #   people.each(&block)
  # end

  def each
    raise 'please provide a block!' unless block_given?
    people.each { |person| yield person }
  end

end

people = People.new([p1, p2, p3])
people.each { |person| p person }
p people.any? { |person| person.name == 'aaa' }

