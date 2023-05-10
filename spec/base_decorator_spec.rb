require './decorator'
require './nameable'

describe Decorator do
  context 'Creating decorator test methods' do
    decorator = Decorator.new('Obed Bamfo')
    it 'sets decorator nameable as Obed Bamfo' do
      expect(decorator.nameable).to eql 'Obed Bamfo'
    end
  end
end
