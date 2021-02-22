require './../lib/convert_hash_syntax'

describe '#convert_hash_syntax' do
  subject { convert_hash_syntax(old_syntax) }

  context 'when old_syntax is {}' do
    let(:old_syntax) { '{}' }

    it 'returns {}' do
      expect(subject).to eq '{}'
    end
  end

  context 'when there is old_syntax' do
    let(:old_syntax) do
      <<~TEXT
        {
          :name => 'Alice',
          :age =>20,
          :gender =>   :female
        }
      TEXT
    end
    let(:expected_syntax) do
      <<~TEXT
        {
          name: 'Alice',
          age: 20,
          gender: :female
        }
      TEXT
    end

    it 'returns {}' do
      expect(subject).to eq expected_syntax
    end
  end
end
