#!/bin/env ruby
ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
def cipher(text, shift)
    result = ''
    text.each_char do |char|
        newchar = ALPHABET.include?(char.downcase) ?  (char.downcase == char ? ALPHABET[ALPHABET.index(char.downcase)-shift] 
        : ALPHABET[ALPHABET.index(char.downcase)-shift].upcase)
        : char
        result<<newchar
    end
    puts result
end

cipher("I'm know something about any things ThaT ###", 6)