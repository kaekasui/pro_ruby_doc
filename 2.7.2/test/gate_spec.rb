require './../lib/gate'
require './../lib/ticket'

describe 'Gate' do
  let!(:umeda) { Gate.new(:umeda) }
  let!(:juso) { Gate.new(:juso) }
  let!(:mikuni) { Gate.new(:mikuni) }

  context '梅田で150円のチケットを購入し入場' do
    let!(:ticket) { Ticket.new(150) }

    before do
      umeda.enter(ticket)
    end

    it '十三で出場可能' do
      expect(juso.exit(ticket)).to be_truthy
    end

    it '三国で出場不可（運賃不足）' do
      expect(mikuni.exit(ticket)).to be_falsey
    end
  end

  context '梅田で190円のチケットを購入し入場' do
    let!(:ticket) { Ticket.new(190) }

    before do
      umeda.enter(ticket)
    end

    it '十三で出場可能' do
      expect(juso.exit(ticket)).to be_truthy
    end

    it '三国で出場可能' do
      expect(mikuni.exit(ticket)).to be_truthy
    end
  end

  context '十三で150円のチケットを購入し入場' do
    let!(:ticket) { Ticket.new(150) }

    before do
      juso.enter(ticket)
    end

    it '三国で出場可能' do
      expect(mikuni.exit(ticket)).to be_truthy
    end
  end
end
