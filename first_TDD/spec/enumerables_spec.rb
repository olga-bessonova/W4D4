require "rspec"
require "enumerables"

describe "#my_uniq" do
  context "valid output" do
    it "output is an array of unique numbers" do
      expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end
  end

  context "valid parameter" do
    it "parameter is an Array" do
      array = [1, 2, 3]
      expect{my_uniq(array)}.to_not raise_error
    end
  end

  it "should not use built_in Array#uniq method" do
    array = [1, 2, 3]
    expect(array).to_not receive(:uniq)
    my_uniq(array)
  end

  it "not modify original array" do 
    array = [1, 2, 3,3,2]
    array2 = array.dup
    my_uniq(array)
    expect(array).to eq(array2)
  end
end

describe "#two_sum" do
  subject(:array) {[-1,0,2,-2,1]}
  let(:array2) {[5, 5, 3, 1]}
  
  it "dictionary-wise order" do
    expect(array.two_sum).to eq ([[0,4], [2,3]])
  end

  it "returns [] when no pair is found" do
    expect(array2.two_sum).to eq([])
  end

  it "won't find spurious zero pairs" do
    expect(array2.two_sum).to eq([])
  end
end