require './capitalize_decorator'
require './person'

describe capitalize_decorator do
  context 'Capitalize Decorator' do
    it 'capitalize the first name' do
      person = Person.new(0o1, 'Obed')
      capitalize_person = CapitalizeDecorator.new(person).correct_name
      expect(capitalize_person).to eq 'Obed'
    end
  end
end
