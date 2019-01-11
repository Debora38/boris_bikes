require 'docking_station'
require 'bike'

describe DockingStation do
  it "should release a bike" do
    if subject.bike_arr.empty?
      expect { subject.release_bike }.to raise_error('No bikes left')
    else
      expect(subject.release_bike).to be_kind_of(Bike)
    end
  end

  it "should dock a bike" do
    arg_bike = Bike.new

    is_expected.to respond_to(:dock).with(1).argument
    if subject.bike_arr.count == DockingStation::DEFAULT_CAPACITY
      expect { subject.dock(arg_bike) }.to raise_error('Already full')
    else
      expect(subject.dock(arg_bike).last).to be_kind_of(Bike)
    end
  end

  it "should tell me that there is a bike" do
    expect(subject.dock(Bike.new)).not_to be :empty
  end

  it "allows Capacity to return an Integer" do
    expect(subject.instance_variable_get(:@capacity)).to be_kind_of(Integer)
  end

  it "allows for Capacity to be set to an arbitrary integer" do
    bigger_station = DockingStation.new(40)
    expect(bigger_station.instance_variable_get(:@capacity)).to eq(40)
  end

  it "makes Capacity default to DEFAULT_CAPACITY when no args are passed" do
    expect(subject.instance_variable_get(:@capacity)).to eq(DockingStation::DEFAULT_CAPACITY)
  end


end
