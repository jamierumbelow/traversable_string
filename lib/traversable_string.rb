# TraversableString is a subclass of String with a 
# bunch of cool methods that make it easier to 
# traverse the string, including the ability to 
# move forward and backward by x characters, as 
# well as the ability to move forward/backward 
# until a specific sub-character.
#
# Author::    Jamie Rumbelow  (http://jamierumbelow.net)
# Copyright:: Copyright (c) 2012 Jamie Rumbelow
#
# Copyright (c) 2012 Jamie Rumbelow <http://jamierumbelow.net>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

class TraversableString < String
  def initialize(string)
    super
    @char = 0
  end

  def char
    self[@char]
  end

  def forward characters
    @char += characters
    char || false
  end

  def read characters
    forward characters
  end

  def backward characters
    if (@char - characters) >= 0
      @char -= characters
      char
    else
      false
    end
  end

  def forward_until subchar
    while (char = forward(1)) != subchar; end
  end

  def backward_until subchar
    while (char = backward(1)) != subchar; end
  end
end