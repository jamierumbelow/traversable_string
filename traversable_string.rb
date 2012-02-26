require 'minitest/autorun'

module TraversableString
  def self.extended base
    base.instance_variable_set :@char, 0
    base.class.send :define_method, :char do
      self[@char]
    end
  end

  def read characters
    @char += characters
    char
  end
end

class TraversableStringTest < MiniTest::Unit::TestCase
  def setup
    @string = 'Hell yeah! I LOVE <3 GitHub.'
    @string.send :extend, TraversableString
  end

  def test_internal_char_pointer_is_at_0_initially
    assert_equal 'H', @string.char
  end

  def test_read_moves_char_pointer_forward_by_x
    @string.read(1) and assert_equal 'e', @string.char
  end
end