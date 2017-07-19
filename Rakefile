# frozen_string_literal: true

require 'rake/testtask'
require 'rubocop/rake_task'

Rake::TestTask.new do |t|
  t.test_files = Dir['spec/**/*_spec.rb']
  t.libs << 'spec'
end

RuboCop::RakeTask.new

task default: %i[test rubocop]
