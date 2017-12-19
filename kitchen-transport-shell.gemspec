$:.push File.expand_path('../lib', __FILE__)

require 'kitchen-transport-shell/version'

Gem::Specification.new do |spec|
  spec.name = 'kitchen-transport-shell'
  spec.version = Kitchen::Transport::Shell::VERSION
  spec.authors = 'Danil Guskov'
  spec.email = 'guskovd86@mail.ru'
  spec.description = 'Additional Test kitchen transport using shell'
  spec.summary = spec.description
  spec.homepage = 'https://github.com/unibet/kitchen-transport-shell'
  spec.license = 'Apache 2'

  spec.files = `git ls-files`.split($/)
  spec.executables = []
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_dependency 'test-kitchen', '~> 1.4'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rspec', '~> 3.3'
end
