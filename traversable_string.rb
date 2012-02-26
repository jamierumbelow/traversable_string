require 'minitest/autorun'

module TraversableString
  class TraversableString < String
  end

  class TraversableStringTest < MiniTest::Unit::TestCase
    def setup
      @string = TraversableString.new('Hell yeah! I LOVE <3 GitHub.')
    end
  end
end