require_relative "../caesar_cipher"
describe "caesar cipher testing" 
    it "zero shift" do
        expect(cipher("Hello, Ruby!", 0)).to eq("Hello, Ruby!")
    end
    
    it "positive shift" do
    end

    it "negative shift" do
    end

end

