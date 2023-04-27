require_relative './person'

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    classroom.add_student(self)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.include?(self) ? classroom.students : classroom.students.append(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
