require 'Calculator'
describe Calculator do
  context 'Calculos matemáticos' do
    it 'Somando dois números' do
      expect(subject.sum(5, 7)).to eq(12)
    end

    it 'Subtração de dois números' do
      expect(subject.sub(7, 2)).to eq(5)
    end
    
    it 'Multiplicação de dois números' do
      expect(subject.mult(10, 2)).to eq(20)
    end
  end
end