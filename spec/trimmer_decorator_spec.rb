require_relative '../student'
require_relative '../trimmer_decorator'

describe Trimmer do
  context 'Create trimmer test functions' do
    it 'should trim the name with more than 10 characters' do
      person = Student.new(23, 'josuerushanika')
      trimmed_name = Trimmer.new(person).correct_name
      expect(trimmed_name).to eql 'josuerusha'
    end
  end
end
