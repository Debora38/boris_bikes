require 'bike'

describe Bike do
  it "should respond to working?" do
    is_expected.to respond_to(:working?)
  end

  it "should return true or false when checked if working?" do
    expect([true, false]).to include subject.working?
  end

#  it "sets a defalut instance variable for a new bike" do
#    expect([true, false]).to include subject.instance_variable_get(:@functional)
#  end

end
