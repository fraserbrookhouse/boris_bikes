describe DockingStation do
  describe   ".bike_release" do
    context "person requests bike rental" do
        it "returns release" do
            expect(DockingStation.bike_release(true)). to eq("release") 
        end
    end
end