require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(name, age, parent_permission)
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def add_classroom(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def to_h
    {
      id: @id,
      name: @name,
      age: @age,
      parent_permission: @parent_permission,
      rentals: @rentals,
      classroom: @classroom.to_h
    }
  end
end
