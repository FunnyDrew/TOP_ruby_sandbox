#!/bin/env ruby
ALPHABET = ("a".."z").to_a
def cipher(text, shift)
    return "Wrong shift, must be integer between 0 and 26" unless (-26..26).include? shift
    real_shift = shift > 0 ? shift-26 : shift    
    result = ''
    text.each_char do |char|
        newchar = ALPHABET.include?(char.downcase) ?  
        (char.downcase == char ? ALPHABET[ALPHABET.index(char.downcase)+real_shift] 
        : ALPHABET[ALPHABET.index(char.downcase)+real_shift].upcase)
        : char
        result<<newchar
    end    
    result
end
