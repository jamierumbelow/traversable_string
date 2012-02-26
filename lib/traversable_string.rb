# **TraversableString** is a subclass of String with a bunch of cool
# methods that make it easier to traverse a string, including the ability to 
# move forward and backward by x characters, as well as the ability to 
# move forward/backward until a specific sub-character.
#
# You can install **TraversableString** with Rubygems:
#
#     $ gem install traversable_string
#
# Then, require it:
# 
#     require 'traversable_string'
#
# Then, you simply create a new instance of `TraversableString` somewhere
# in your Ruby script and away you go:
#
#     source = TraversableString.new 'Hell yeah! I LOVE <3 GitHub.'
#

# Away we go. Subclass `String` so that a `TraversableString` acts just
# like a normal string when being used.
class TraversableString < String

  #### Initialisation

  # We hand our passed string literal to the `initialize` method of
  # the parent `String` class. Then, we set our internal `@char` counter
  # to track the current position in the string.
  def initialize(string)
    super
    @char = 0
  end

  # Let's define a simple getter so that we can access the current
  # character easily.
  def char
    self[@char]
  end

  #### Traversal

  # We can move forward by an arbitrary number of characters,
  # increase our internal pointer by the number of characters,
  # and either return the character or `false` if we've reached
  # the end of the string.
  def forward characters
    @char += characters
    char || false
  end

  # We can use `read` instead of forward if we like. This is mainly
  # to mirror the API found in `StringIO`.
  def read characters
    forward characters
  end

  # We can move backward by an arbitrary number of characters too.
  # It's important to check that we can move backward, otherwise
  # we'll be passing `String` a negative number, and we'll wrap round.
  # So, we decrease our internal pointer -- since we know that we're able to move 
  # backward, and that the current character is inherent to our traversal of the string, 
  # we can return it. Otherwise, we'll return false.
  def backward characters
    if (@char - characters) >= 0
      @char -= characters
      char
    else
      false
    end
  end

  # We can move forward and backward through the string until we find a 
  # subcharacter too. This is extremely useful for parsing stuff. We simply 
  # loop through the string (forward or backward), character by character, 
  # until we match it, at which point we stop.
  def forward_until subchar
    while (char = forward(1)) != subchar; end
  end

  def backward_until subchar
    while (char = backward(1)) != subchar; end
  end
end

# And there you have it.