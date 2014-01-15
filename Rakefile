# -*- encoding: utf-8; mode: ruby; -*-

require 'rake' 
require 'rake/testtask' 
require 'rdoc/task' 
require 'bundler/gem_tasks'
 
desc 'Default: run unit tests.' 
task :default => :test 
 
desc 'Test auto_complete plugin.' 
Rake::TestTask.new(:test) do |t| 
  t.libs << 'lib' 
  t.pattern = 'test/**/*_test.rb' 
  t.verbose = true 
end 
 
desc 'Generate documentation for auto_complete plugin.' 
Rake::RDocTask.new(:rdoc) do |rdoc| 
  rdoc.rdoc_dir = 'rdoc' 
  rdoc.title    = 'Auto Complete' 
  rdoc.options << '--line-numbers' << '--inline-source' 
  rdoc.rdoc_files.include('README') 
  rdoc.rdoc_files.include('lib/**/*.rb') 
end
