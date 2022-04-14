require 'spec_helper'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  context 'testing the factorial method' do
    it 'returns factorial if input is 0' do
      factorial = @solver.factorial(0)
      expect(factorial).to eq 1
    end
    it 'returns factorial if input is positive' do
      factorial = @solver.factorial(3)
      expect(factorial).to eq 6
    end
    it 'raises an error if input is negative' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError, 'Negative numbers are not allowed')
    end
  end
end
