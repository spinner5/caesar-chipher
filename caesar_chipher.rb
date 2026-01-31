def caesar_cipher(string, shift)
    string_bytes = string.bytes
    
    p string_bytes

    string_bytes = string_bytes.each {|b| b += 5}

    p string_bytes
end

caesar_cipher("anton veijola", 5)