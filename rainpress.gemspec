# frozen_string_literal: true

require_relative 'lib/rainpress/version'

Gem::Specification.new do |s|
  s.name = 'rainpress'
  s.description = 'A CSS compressor'
  s.summary = 'A CSS compressor'
  s.version = Rainpress::VERSION
  s.authors = ['Uwe L. Korn', 'Jeff Smick', 'Denis Defreyne']
  s.email = 'denis@stoneship.org'
  s.homepage = 'https://github.com/ddfreyne/rainpress'
  s.license = 'MIT'

  s.files =
    Dir['[A-Z]*'] +
    Dir['{bin,lib,spec}/**/*'] +
    Dir['*.gemspec']
  s.executables = ['csspress']
  s.default_executable = 'csspress'
  s.require_paths = ['lib']

  s.required_ruby_version = '~> 2.3'

  s.add_development_dependency('bundler', '~> 1.14')
end
