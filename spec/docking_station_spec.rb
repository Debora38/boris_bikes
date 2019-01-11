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
    if subject.bike_arr.count == 1
      expect { subject.dock(arg_bike) }.to raise_error('Already full')
    else
      expect(subject.dock(arg_bike).last).to be_kind_of(Bike)
    end
  end

  it "should tell me that there is a bike" do
    expect(subject.dock(Bike.new)).not_to be :empty
  end

end
