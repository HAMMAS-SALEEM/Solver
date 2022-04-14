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
  
  context 'testing the reverse_string method' do
    it 'should return reverse string' do
      reverse = @solver.reverse_string('hello')
      expect(reverse).to eq 'olleh'
    end
  end

  context 'testing the fizzbuzz method' do
    it "should return fizz if input is divisible by 3" do
      fizz = @solver.fizzbuzz(3)
      expect(fizz).to eq 'fizz'
    end
    it "should return buzz if input is divisible by 5" do
      buzz = @solver.fizzbuzz(5)
      expect(buzz).to eq 'buzz'
    end
    it "should return fizzbuzz if input is divisible by 3 & 5" do
      fizzbuzz = @solver.fizzbuzz(15)
      expect(fizzbuzz).to eq 'fizzbuzz'
    end
    it "should return number if input is not divisible by 3 or 5" do
      number = @solver.fizzbuzz(7)
      expect(number).to eq "#{number}"
    end
  end
end
