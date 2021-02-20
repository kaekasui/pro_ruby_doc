require './../lib/convert_length'

describe '#convert_length' do
  subject { convert_length(old_value, from: old_unit, to: new_unit) }

  context 'when params are (1, :m, :in)' do
    let(:old_value) { 1 }
    let(:old_unit) { :m }
    let(:new_unit) { :in }

    it 'returns 39.37' do
      expect(subject).to eq 39.37
    end
  end

  context 'when params are (15, :in, :m)' do
    let(:old_value) { 15 }
    let(:old_unit) { :in }
    let(:new_unit) { :m }

    it 'returns 0.38' do
      expect(subject).to eq 0.38
    end
  end

  context 'when params are (35_000, :ft, :m)' do
    let(:old_value) { 35_000 }
    let(:old_unit) { :ft }
    let(:new_unit) { :m }

    it 'returns 10670.73' do
      expect(subject).to eq 10_670.73
    end
  end
end
