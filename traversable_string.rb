require 'minitest/autorun'

module TraversableString
  def self.extended base
    base.instance_variable_set :@char, base[0]
    base.class.send :attr_accessor, :char
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
end