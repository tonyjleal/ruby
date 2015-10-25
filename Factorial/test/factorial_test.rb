require './lib/factorial.rb'
require 'test/unit'


class Factorial_test < Test::Unit::TestCase

  def test_factorial_0
    assert_equal(1, 0.factorial)
  end

  def test_factorial_1
    assert_equal(1, 1.factorial)
  end

  def test_factorial_2
    assert_equal(2, 2.factorial)
  end

  def test_factorial_3
    assert_equal(6, 3.factorial)
  end

  def test_factorial_5
    assert_equal(120, 5.factorial)
  end

  def test_factorial_10
    assert_equal(3628800, 10.factorial)
  end

  def test_factorial_25
    assert_equal(15511210043330985984000000, 25.factorial)
  end

  def test_factorial_50
    assert_equal(30414093201713378043612608166064768844377641568960512000000000000, 50.factorial)
  end

  def test_factorial_100
    assert_equal(93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000, 100.factorial)
  end


end
