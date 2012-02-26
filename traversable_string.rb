require 'minitest/autorun'

module TraversableString
  def self.extended base
    base.instance_variable_set :@char, 0
    base.class.send :define_method, :char do
      self[@char]
    end
  end

  def forward characters
    @char += characters
    char || false
  end

  def read characters
    forward characters
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

  def test_forward_moves_char_pointer_forward_by_x
    @string.forward 1 and assert_equal 'e', @string.char
    @string.forward 1 and assert_equal 'l', @string.char
    @string.forward 2 and assert_equal ' ', @string.char
    @string.forward 5 and assert_equal '!', @string.char
  end

  def test_forward_returns_false_when_it_reaches_the_end_of_the_string
    assert_equal false, @string.forward(28)
  end

  def test_read_is_a_synonym_for_forward
    @string.read 1
    assert_equal 'e', @string.char
  end
end