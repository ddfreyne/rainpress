require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = Dir['spec/**/*_spec.rb']
  t.libs << 'spec'
end

task default: :test
