require 'check_codeword'

RSpec.describe "check_codeword" do
  it "returns a wrong message if given the wrong codeword" do
    result = check_codeword("red")
    expect(result).to eq "WRONG!"
  end
  it "returns a correct message if given right codeword" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "returns a close message if given a codeword that is close" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
  it "returns a wrong message if codeword with just right first letter" do
    result = check_codeword("happy")
    expect(result).to eq "WRONG!"
  end
  it "returns a wrong message if codeword with just right last letter" do
    result = check_codeword("close")
    expect(result).to eq "WRONG!"
  end
end