require 'dice'

describe Dice do 

  context '#roll' do

    it 'returns a number between 1 and 6' do
      expect(subject.roll[0]).to be_between(1,6)
    end

    it 'returns a result that is randomly picked between 1 and 6' do
      srand(9)
      expect(subject.roll[0]).to eq 5
    end

    it 'returns a total between n*1 and n*6' do
      srand(5)
      expect(subject.roll(2).sum).to eq 10
    end

    it 'records each die roll' do
      srand(3)
      subject.roll(2)
      expect(subject.view_history).to eq [3, 1]
    end

    it 'able to get current score' do
      subject.roll
      expect(subject.current_score).to eq 2
    end

  end

end