require 'minitest/autorun'
require 'traversable_string'

class TraversableStringTest < MiniTest::Unit::TestCase
  def setup
    @string = TraversableString.new 'Hell yeah! I LOVE <3 GitHub.'
  end

  def test_internal_char_pointer_is_at_0_initially
    assert_equal 'H', @string.char
  end

  def test_traversal_traverses_string_effectively
    # Forward!
    @string.forward 1 and assert_equal 'e', @string.char
    @string.forward 1 and assert_equal 'l', @string.char
    @string.forward 2 and assert_equal ' ', @string.char
    @string.forward 5 and assert_equal '!', @string.char

    # Run away!
    @string.backward 2 and assert_equal 'a', @string.char
    @string.backward 1 and assert_equal 'e', @string.char
    @string.backward 4 and assert_equal 'l', @string.char
    @string.backward 2 and assert_equal 'H', @string.char
  end

  def test_forward_and_backward_return_false_when_they_reach_the_end_of_the_string
    assert_equal false, @string.forward(28)
    assert_equal false, @string.backward(29)
  end

  def test_read_is_a_synonym_for_forward
    @string.read 1
    assert_equal 'e', @string.char
  end

  def test_forward_and_backward_return_the_character
    assert_equal 'e', @string.forward(1)
    assert_equal 'H', @string.backward(1)
  end

  def test_forward_and_backward_until_traverses_through_a_string_until_a_subchar
    @string.forward_until '!'
    assert_equal '!', @string.char

    @string.backward_until 'l'
    assert_equal 'l', @string.char
  end

  def test_forward_and_backward_until_returns_snippet_between_now_and_then
    assert_equal 'ell yeah', @string.forward_until('!')
    assert_equal ' I LOVE ', @string.forward_until('<')
    assert_equal ' I LOVE ', @string.backward_until('!')
    assert_equal 'ell yeah', @string.backward_until('H')

    assert_equal 'Hell yeah!', @string.forward_until('!', true)
    assert_equal 'Hell yeah!', @string.backward_until('H', true)
  end
end