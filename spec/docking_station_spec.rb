require 'docking_station'

describe DockingStation do
  describe "#dock" do
    it "raises an error when full" do
      20.times {subject.dock Bike.new}
      expect{ subject.dock Bike.new}.to raise_error "docking station full"
    end
  end

 describe "#release_bike" do
   it "releases a bike" do
    bike = Bike.new 
    subject.dock(bike) 
    expect(subject.release_bike).to eq bike
   end
   it "raises an error when there are no bikes available" do
    expect{ subject.release_bike}.to raise_error "no bikes available"
   end
  end

end