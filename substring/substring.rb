def substring(text, dictionary)    
    text.downcase!
    text.split.reduce({}) do |words_map, text_word|
        dictionary.each do |dic_word|
            if text_word.include? dic_word
                words_map.has_key?(dic_word) ? words_map[dic_word] += 1 : words_map[dic_word] = 1
            end
        end
        words_map  
    end
end
