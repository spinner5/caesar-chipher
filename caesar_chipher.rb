def caesar_cipher(string, shift)
    shifted_chars = string.chars.map do |char|
        base = char.ord < 91 ? 65 : 97
        if char.ord.between?(65, 90) || char.ord.between?(97,122)
            (((char.ord - base + shift) % 26) + base).chr # normalize base then shift it with modulo and add back base
        else
            char
        end
    end
    shifted_chars.join
end

puts caesar_cipher("What a string!", 5)
p caesar_cipher("What a string!", 5)