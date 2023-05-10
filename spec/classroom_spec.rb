require './classroom'
require './student'

describe Classroom do
  context 'Creating classroom test methods' do
    classroom = Classroom.new('Software developer')
    it 'checks the classroom info' do
      expect(classroom).to be_a Classroom
      expect(classroom.label).to eql 'Software developer'
    end

    it 'adds students to classroom' do
      new_student = Student.new('Josue', 24, true)
      classroom.students.push(new_student)
      expect(classroom.students).to include(new_student)
      expect(classroom.students.length).to eql 1
      expect(new_student.name).to eql 'Josue'
    end
  end
end

