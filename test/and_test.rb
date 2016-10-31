require 'minitest/autorun'
require 'minitest/pride'
require './lib/and'

class AndTest < MiniTest::Test
  def test_it_exists
    assert And::Double.new
  end

  def test_it_has_an_input_a
    double = And::Double.new
    double.input_a = 1
    assert 1, double.input_a
  end

  def test_it_has_an_input_b
    double = And::Double.new
    double.input_b = 1
    assert 1, double.input_b
  end

  def test_inputs_are_initialized_at_zero
    double = And::Double.new
    assert_equal 0, double.input_a
    assert_equal 0, double.input_b
  end

  def test_output_is_0_by_default
    double = And::Double.new
    assert_equal 0, double.output
  end

  def test_it_ouputs_1_when_all_inputs_are_1
    double = And::Double.new
    double.input_a = 1
    double.input_b = 1
    assert_equal 1, double.output
  end

  def test_it_ouputs_0_when_all_input_a_is_zero
    double = And::Double.new
    double.input_a = 0
    double.input_b = 1
    assert_equal 0, double.output
  end

  def test_it_ouputs_0_when_all_input_b_is_zero
    double = And::Double.new
    double.input_a = 1
    double.input_b = 0
    assert_equal 0, double.output
  end

  def test_it_exists
    assert And::Triple.new
  end

  def test_it_has_an_input_a
    triple = And::Triple.new
    triple.input_a = 1
    assert 1, triple.input_a
  end

  def test_it_has_an_input_b
    triple = And::Triple.new
    triple.input_b = 1
    assert 1, triple.input_b
  end

  def test_it_has_an_input_c
    triple = And::Triple.new
    triple.input_c = 1
    assert 1, triple.input_c
  end

  def test_inputs_are_initialized_at_zero
    triple = And::Triple.new
    assert_equal 0, triple.input_a
    assert_equal 0, triple.input_b
    assert_equal 0, triple.input_c
  end

  def test_output_is_0_by_default
    triple = And::Triple.new
    assert_equal 0, triple.output
  end

  def test_it_ouputs_1_when_all_inputs_are_1
    triple = And::Triple.new
    triple.input_a = 1
    triple.input_b = 1
    triple.input_c = 1
    assert_equal 1, triple.output
  end

  def test_it_ouputs_0_when_all_input_a_and_b_are_zero
    triple = And::Triple.new
    triple.input_a = 0
    triple.input_b = 0
    triple.input_c = 1
    assert_equal 0, triple.output
  end

  def test_it_ouputs_0_when_all_input_a_and_c_are_zero
    triple = And::Triple.new
    triple.input_a = 0
    triple.input_b = 1
    triple.input_c = 0
    assert_equal 0, triple.output
  end

  def test_it_ouputs_0_when_all_input_b_and_c_are_zero
    triple = And::Triple.new
    triple.input_a = 1
    triple.input_b = 0
    triple.input_c = 0
    assert_equal 0, triple.output
  end
end
