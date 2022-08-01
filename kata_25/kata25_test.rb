gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'kata25'

# Wildcards Tests
class Kata25Test < Minitest::Test
  def test_case_code_wars_1
    assert_equal possibilities('?'), %w[0 1]
  end

  def test_case_code_wars_2
    assert_equal possibilities('101?'), %w[1010 1011]
  end

  def test_case_code_wars_3
    assert_equal possibilities('??'), %w[00 01 10 11]
  end

  def test_case_code_wars_4
    assert_equal possibilities('10??'), %w[1000 1001 1010 1011]
  end

  def test_case_code_wars_5
    assert_equal possibilities('1?1?'), %w[1010 1011 1110 1111]
  end
end
