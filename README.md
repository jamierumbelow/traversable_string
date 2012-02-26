# TraversableString

[![Build Status](https://secure.travis-ci.org/jamierumbelow/traversable_string.png?branch=master)](http://travis-ci.org/jamierumbelow/traversable_string)

`TraversableString` is a *totally awesome* subclass of String with a bunch of cool methods that make it easier to traverse a string character by character.

It can be used for all kinds of cool stuff, like, for example:

* Parsing code/serializations
* Searching through strings and extracting data
* Examining database search results

## Installation for the Nation

Install it with Rubygems!

	$ gem install traversable_string

## Usage

Create a new instance of `TraversableString`, passing through the string to traverse as a `String` literal:

```ruby
source = TraversableString.new 'Hell yeah! I LOVE <3 GitHub.'
```

You can then traverse forward and backward through the string using the appropriately named methods:

```ruby
source.forward 2 # l
source.forward 7 # !
source.backward 4 # y
```

You can fetch the current character with the `char` method:

```ruby
source.char # y
```

Jump to the first occurance of a string:

```ruby
source.forward_until '<'
```

## Running the tests

I'm using [MiniTest](https://github.com/seattlerb/minitest) for the test suite, so running the tests is as simple as running `ruby` on the test file. Remember to include the **lib** directory:

	$ ruby -Ilib test/test_traversable_string.rb

However, I much prefer the [turn](http://rubygems.org/gems/turn) gem. It's prettier and much more useful:

	$ gem install turn
	$ turn -Ilib test/test_traversable_string.rb

## License

	Copyright (c) 2012 Jamie Rumbelow <jamie@jamierumbelow.net>

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.