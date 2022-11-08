require "report_length"

RSpec.describe "report_length method" do
  it "should report Robbie as 6 characters long " do
    result = report_length("Robbie")
    expect(result).to eq "This string was 6 characters long."
  end
  it "should report Daisy as 5 characters long  " do
    result = report_length("Daisy")
    expect(result).to eq "This string was 5 characters long."
  end
  it "should returns no method error" do
    expect{report_length(6)}.to raise_error(NoMethodError)
  end
end