require_relative "../substring"
#dictionary = %w[one i has some time next form do it let me down blowing down me met]
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
describe "Subscribe testing" do
  it "dictionary and sentance" do      
    expect(substring("Howdy partner, sit down! How's it going?", dictionary)).to eql({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
  end
end