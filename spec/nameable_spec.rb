require './person'

describe Nameable do
  context 'Testing correct name method' do
    person = Person.new( 40,  'Josue', parent_permission: false)
    it 'should return correct name' do
      expect(person.correct_name).to eql 'Josue'
    end
  end
end

