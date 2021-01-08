require 'dice'

describe Dice do 

  describe '#roll' do

    it 'responds to a roll' do
      expect(subject). to respond_to(:roll)
    end

  end

end