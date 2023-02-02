require "rspec"
require "enumerables"

describe "#my_uniq" do
  context "valid output" do
    it "output is an array of unique numbers" do
      expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end
  end

  # context "valid parameter" do
  #   it "parameter is an Array" do
  #     expect(my_uniq([1, 2, 1, 3, 3])).to_not raise_error
  #   end
  # end

  it "should not use built_in Array#uniq method" do
    array = [1, 2, 3]
    expect(array).to_not receive(:uniq)
    my_uniq(array)
  end
end
