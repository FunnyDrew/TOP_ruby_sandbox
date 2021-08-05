require_relative "../caesar_cipher"
describe "caesar cipher testing" do
    it "zero shift" do
        expect(cipher("Hello, Ruby!", 0)).to eq("Hello, Ruby!")
    end
    
    it "negative shift" do
        expect(cipher("Hello, Ruby!", -3)).to eq("Ebiil, Oryv!")        
    end

    it "positive shift" do
        expect(cipher("Hello, Ruby!", 5)).to eq("Mjqqt, Wzgd!")
    end

    it "wrong shift" do
        expect(cipher("Hello, Ruby!", 32)).to eq("Wrong shift, must be integer between 0 and 26");
    end

end

