def caesarCipher(str, shiftFactor)
  str.chars.map do |char|
    if char >= 'A' && char <= 'Z'
      base = 'A'.ord
      (((char.ord - base + shiftFactor) % 26) + base).chr
    else
      char
    end
  end
end

test = caesarCipher("HELLO!", 5)

puts test