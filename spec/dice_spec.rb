require 'dice'

describe Dice do 

  describe '#roll' do

    it 'returns a number between 1 and 6' do
      expect(subject.roll).to be_between(1,6)
    end

  end

end