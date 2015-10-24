require './lib/decimal_to_roman.rb'
require 'minitest/autorun'

class DecimalToRoman_test < MiniTest::Unit::TestCase

  def test_zero
    assert_raises(RuntimeError) { 0.to_roman }
  end

  def test_negative
    assert_raises(RuntimeError) { -2.to_roman }
  end

  def test_1
    assert_equal('I', 1.to_roman)
  end

  def test_2
    assert_equal('II', 2.to_roman)
  end

  def test_3
    assert_equal('III', 3.to_roman)
  end

  def test_4
    assert_equal('IV', 4.to_roman)
  end

  def test_5
    assert_equal('V', 5.to_roman)
  end

  def test_6_to_10
     range = {
       6 => 'VI',
       7 => 'VII',
       8 => 'VIII',
       9 => 'IX',
       10 => 'X'
     }
    range.each { |decimal,roman|  assert_equal(roman, decimal.to_roman) }
  end

  def test_special_cases
    range = {
      11 => 'XI',
      14 => 'XIV',
      19 => 'XIX',
      20 => 'XX',
      24 => 'XXIV',
      39 => 'XXXIX',
      49 => 'XLIX',
      59 => 'LIX',
      199 => 'CXCIX',
      399 => 'CCCXCIX',
      499 => 'CDXCIX',
      599 => 'DXCIX',
      600 => 'DC',
      899 => 'DCCCXCIX',
      999 => 'CMXCIX',
      3999 => 'MMMCMXCIX'
    }
    range.each { |decimal,roman|  assert_equal(roman, decimal.to_roman) }
  end

  def test_greater_or_equal_than_4000
    range = {
      4000 => '(IV)',
      4001 => '(IV)I',
      4990 => '(IV)CMXC',
      5000 => '(V)',
      6000 => '(VI)',
      7000 => '(VII)',
      8000 => '(VIII)',
      101000 => '(CI)',
      1000000 => '(M)'
    }
    range.each { |decimal,roman|  assert_equal(roman, decimal.to_roman) }
  end

  def test_ROMAN_NUMERALS
    range = Hash[ 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"]
    range.each { |decimal,roman|  assert_equal(roman, decimal.to_roman) }
  end

end
