require './student'

describe Student do
  describe '#initialize' do
    it 'checks if its an instance of Student' do
      @student = Student.new(27, 'josue')
      expect(@student).to be_an_instance_of(Student)
    end
  end

  describe '#play_hooky' do
    it 'checks if the Student plays hookey' do
      @student = Student.new(27, 'josue')
      expect(@student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end
end
