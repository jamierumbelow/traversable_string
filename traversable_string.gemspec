Gem::Specification.new do |spec|
  spec.name = "traversable_string"
  spec.version = '1.0.0-dev'
  spec.summary = "Traverse strings like a boss"
  spec.require_path = 'lib/'
  spec.files = Dir['lib/*.rb']
  spec.test_files = Dir['test/test_*.rb']
  spec.author = "Jamie Rumbelow"
  spec.email = "jamie@jamierumbelow.net"
  spec.homepage = "https://github.com/jamierumbelow/traversable_string/"
  spec.description = <<-EOF
  TraversableString is a subclass of String with a bunch of cool methods that make it easier to traverse a string, 
  including the ability to move forward and backward by x characters, as well as the ability to 
  move forward/backward until a specific sub-character.
  EOF
  spec.has_rdoc = false
end