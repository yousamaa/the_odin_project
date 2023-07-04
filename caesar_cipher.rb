def caesar_cipher str, shift_factor
  str = str.downcase
  result = ''
  str.split("").each { |st|
    if (st.ord + shift_factor) < 96
      result << st
    elsif (st.ord + shift_factor) < 123
      result << (st.ord + shift_factor).chr
    else
      result << (96 + (st.ord + shift_factor) % 122).chr
    end
  }
  result.capitalize
end

puts caesar_cipher("What a string!", 5)
