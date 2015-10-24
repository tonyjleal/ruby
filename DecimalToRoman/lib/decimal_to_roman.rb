class Fixnum

  ROMAN_NUMERAL = Hash[ 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"]

  def to_roman
    decimal = self
    fail 'Zero or negative not exist.' if decimal <= 0

    roman = ''

    if decimal >= 4000
      thousand_units = (decimal/1000)
      decimal = decimal - (thousand_units * 1000)
      ROMAN_NUMERAL.keys.each do |n|
        while thousand_units >= n
          thousand_units = thousand_units - n
          roman += ROMAN_NUMERAL[n]
        end
      end
      roman = "(#{roman})"
    end

    if decimal > 0
      ROMAN_NUMERAL.keys.each do |n|
        while decimal >= n
            decimal = decimal - n
            roman += ROMAN_NUMERAL[n]
        end
      end
    end

    return roman
  end

end
