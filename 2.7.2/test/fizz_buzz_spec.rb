require './../lib/fizz_buzz'

describe 'fizz_buzz' do
  subject { fizz_buzz(num) }

  context 'when num is 1' do
    let(:num) { 1 }

    it 'returns "1"' do
      expect(subject).to eq "1"
    end
  end

  context 'when num is 2' do
    let(:num) { 2 }

    it 'returns "2"' do
      expect(subject).to eq "2"
    end
  end

  context 'when num is 3' do
    let(:num) { 3 }

    it 'returns "Fizz"' do
      expect(subject).to eq "Fizz"
    end
  end

  context 'when num is 4' do
    let(:num) { 4 }

    it 'returns "4"' do
      expect(subject).to eq "4"
    end
  end

  context 'when num is 5' do
    let(:num) { 5 }

    it 'returns "Buzz"' do
      expect(subject).to eq "Buzz"
    end
  end

  context 'when num is 6' do
    let(:num) { 6 }

    it 'returns "Fizz"' do
      expect(subject).to eq "Fizz"
    end
  end

  context 'when num is 15' do
    let(:num) { 15 }

    it 'returns "Fizz Buzz"' do
      expect(subject).to eq "Fizz Buzz"
    end
  end
end
