require './../lib/deep_freezable'

describe 'DeepFreezable' do
  let(:struct) { Struct.new(:deep_freezable) { include DeepFreezable } }
  let(:deep_freezable) { struct.new }

  context 'array' do
    subject { deep_freezable.deep_freeze(array) }
    let(:array) { ['Japan', 'US', 'India'] }

    it 'is frozen' do
      expect(subject.frozen?).to be_truthy
    end

    it 'is frozen with all' do
      expect(subject.all? { |e| e.frozen? }).to be_truthy
    end
  end

  context 'hash' do
    subject { deep_freezable.deep_freeze(hash) }
    let(:hash) { { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' } }

    it 'is frozen' do
      expect(subject.frozen?).to be_truthy
    end

    it 'is frozen with all' do
      expect(subject.all? { |key, value| key.frozen? && value.frozen? }).to be_truthy
    end
  end
end
