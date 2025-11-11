def caesarCipher(str, shiftFactor)
  #Normalize shiftFactor into 0-25 range
  #In Ruby, -1 % 26 = 25, which is exactly what we want for negative shifts
  shiftFactor %= 26
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

test = caesarCipher("Hello World!", 5)

puts test