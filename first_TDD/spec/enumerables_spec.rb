require 'rspec'
require 'enumerables'

describe "#my_uniq" do
  context 'valid output' do
    it "output is an array of unique numbers" do
      expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    end
  end

  # context 'valid parameter' do
  #   it "parameter is an Array" do
  #     expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
  #   end
  # end
  
end

