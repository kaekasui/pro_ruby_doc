require './../lib/rgb'

describe 'rgb' do
  describe '#to_hex' do
    subject { to_hex(*numbers) }

    context 'when numers are (0, 0, 0)' do
      let(:numbers) { [0, 0, 0] }

      it 'returns "#000000"' do
        expect(subject).to eq "#000000"
      end
    end

    context 'when numbers are (255, 255, 255)' do
      let(:numbers) { [255, 255, 255] }

      it 'returns "#ffffff"' do
        expect(subject).to eq "#ffffff"
      end
    end

    context 'when numbers are (4, 60, 120)' do
      let(:numbers) { [4, 60, 120] }

      it 'returns "#043c78"' do
        expect(subject).to eq "#043c78"
      end
    end
  end

  describe '#to_ints' do
    subject { to_ints(code) }

    context 'when code is #000000' do
      let(:code) { '#000000' }

      it 'returns [0, 0, 0]' do
        expect(subject).to eq [0, 0, 0]
      end
    end

    context 'when code is #ffffff' do
      let(:code) { '#ffffff' }

      it 'returns [255, 255, 255]' do
        expect(subject).to eq [255, 255, 255]
      end
    end

    context 'when code is #043c78' do
      let(:code) { '#043c78' }

      it 'returns [4, 60, 120]' do
        expect(subject).to eq [4, 60, 120]
      end
    end
  end

end
