# TraversableString

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

	source = TraversableString.new 'Hell yeah! I LOVE <3 GitHub.'

You can then traverse forward and backward through the string using the appropriately named methods:

	source.forward 2 # l
	source.forward 7 # !
	source.backward 4 # y

You can fetch the current character with the `char` method:

	source.char # y

Jump to the first occurance of a string:

	source.forward_until '<'

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