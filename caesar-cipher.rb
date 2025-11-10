def caesarCipher(str, shiftFactor)
  str.chars.map do |char|
    if char >= 'A' && char <= 'Z'
      base = 'A'.ord
      (((char.ord - base + shiftFactor) % 26) + base).chr
    elsif char >= 'a' && char <= 'z'
      base = 'a'.ord
      (((char.ord - base + shiftFactor) % 26) + base).chr
    else
      char
    end
  end.join
end

test = caesarCipher("HELLO!", 5)

puts test