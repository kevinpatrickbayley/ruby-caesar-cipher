def caesarCipher(str, shiftFactor)
  str.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      char.ord
    else
      char
    end
  end
end