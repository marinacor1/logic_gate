gem 'minitest', '~> 5.2'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'logic_game'

class DoubleTest < Minitest::Test

  def test_input_a_is_high
    gate = And::Double.new(1, 1)

    assert_equal 1, gate.input_a
  end

  def test_input_b_is_high
    gate = And::Double.new(1, 1)

    assert_equal 1, gate.input_b
  end

  def test_output_for_input_a_and_b_are_one_output_is_one
    gate = And::Double.new(1, 1)
    assert_equal 1, gate.output
  end

  def test_that_when_input_b_is_zero_and_input_a_is_one_output_is_zero
    gate = And::Double.new(1,  0)

    assert_equal 0, gate.output
  end

  def test_when_input_b_and_a_are_one_and_c_is_zero_then_output_is_zero
    gate = And::Triple.new(1, 1)

    assert_equal 0, gate.output

  end

  def test_when_input_b_and_a_and_c_are_one_then_output_is_one
    gate = And::Triple.new(1, 1, 1)

    assert_equal 1, gate.output

  end


end
