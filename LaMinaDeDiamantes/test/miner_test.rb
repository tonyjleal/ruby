require './lib/miner.rb'
require 'test/unit'

class Miner_test < Test::Unit::TestCase

  def setup
    @miner = Miner.new
  end

  def test_miner_empty
      assert_equal(0, @miner.extract(''))
  end

  def test_miner_0
    assert_equal(0, @miner.extract('>>><<<'))
  end

  def test_miner_1
    assert_equal(1, @miner.extract('<>'))
  end

  def test_miner_2
    assert_equal(2, @miner.extract('<<>>'))
  end

  def test_miner_3
    assert_equal(3, @miner.extract('<><<>><<'))
  end

end
