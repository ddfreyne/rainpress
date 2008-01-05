#!/usr/bin/env ruby
######################################
## The main Rakefile for Drossellog ##
######################################

## Includes ##

require 'rake/clean'
require 'gettext/utils'

## Config ##

doc = {
  'Files' => FileList['*.rb', 'rainpress/*.rb'],
  'Title' => 'Rainpress'
}

## Tasks ##


task :test do
  sh 'rcov rainpress_test.rb'
end

task :source_deb do 
  sh 'debuild -S -I.svn -us -uc'
end
task :source_deb => [:clean]

task :build_pot => [File.join('locale', 'rainpress.pot')]
task :doc => ['doc/index.html']
task :all => [:doc, :test]
task :default => [:all]

task :publish_to_rainpress_xhochy_com => [:doc, :test]
task :publish_to_rainpress_xhochy_com do
  sh 'rm -rf /srv/www/port80/rainpress.xhochy.com/doc/'
  sh 'rm -rf /srv/www/port80/rainpress.xhochy.com/coverage/'
  sh 'cp -r doc/ coverage/ /srv/www/port80/rainpress.xhochy.com'
end

## clean Task ##

CLEAN.include('doc/')
CLEAN.include('coverage/')

## File Tasks ##

file File.join('locale', 'rainpress.pot') => 'rainpress.rb' do
  sh 'rgettext rainpress.rb -o ' + File.join('locale', 'rainpress.pot')
  puts '!!! Remember to upload the updated pot-file to Launchpad/Translations !!!'
end

file File.join('doc', 'index.html') => doc['Files'] do
  sh "rm -rf doc"
  
  cmd = 'rdoc --title ' + doc['Title']
  cmd+= ' --all --diagram --image-format png --inline-source --line-numbers '
  cmd+= '--op doc/ --tab-width 4'
  sh cmd
end 