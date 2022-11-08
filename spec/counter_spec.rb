require 'counter'

RSpec.describe Counter do
  it "should create an instance counter class when initialized" do
    count = Counter.new
    result = count.is_a?(Counter)
    expect(result).to eq true
    end

  it "should return counted to 0 so far" do
    count = Counter.new
    result = count.report
    expect(result).to eq "Counted to 0 so far."
  end
  it "should return counted to 10 so far" do
    count = Counter.new
    count.add(10)
    result = count.report
    expect(result).to eq "Counted to 10 so far."
  end
end