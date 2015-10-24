require './fizzbuzz.rb'
require 'test/unit'

class Fizzbuzz_test < Test::Unit::TestCase

  def setup
    @fizzbuzz = Fizzbuzz.new
  end

  def test_no_devuelve_nada
    assert_equal('',@fizzbuzz.comprobacion(1))
  end

  def test_devuelve_fizz_is_envio_3
    assert_equal('Fizz',@fizzbuzz.comprobacion(3))
  end

  def test_devuelve_buzz_is_envio_5
    assert_equal('Buzz',@fizzbuzz.comprobacion(5))
  end

  def test_devuelve_fizz_is_envio_6
    assert_equal('Fizz',@fizzbuzz.comprobacion(6))
  end

  def test_devuelve_Fizzbuzz_is_envio_15
    assert_equal('Fizzbuzz',@fizzbuzz.comprobacion(15))
  end

  def test_devuelve_Fizzbuzz_is_envio_30
    assert_equal('Fizzbuzz',@fizzbuzz.comprobacion(30))
  end

end
