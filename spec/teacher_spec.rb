require './teacher'

describe Teacher do
  context 'Testing functionalities for Teacher class' do
    teacher = Teacher.new('Soft', 23, 'Josue')
    it 'checks teacher information' do
      expect(teacher).to be_a Teacher
      expect(teacher.specialization).to eql 'Soft'
      expect(teacher.age).to eql 23
      expect(teacher.name).to eql 'Josue'
    end

    it 'checks teacher can use services?' do
      expect(teacher.can_use_services?).to eql true
    end

    it 'returns a hash representation of the teacher' do
      teacher = Teacher.new('Soft', 23, 'Josue')

      expected_hash = {
        id: teacher.instance_variable_get(:@id),
        age: 23,
        name: 'Josue',
        specialization: 'Soft',
        parent_permission: true,
        rentals: []
        
      }

      expect(teacher.to_h).to eq(expected_hash)
    end
  end
end
