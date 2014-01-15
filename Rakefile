# -*- encoding: utf-8; mode: ruby; -*-

namespace :bundler do
  require 'bundler/gem_tasks'
end

# A subclass of Bundler::GemHelper that allows us to push to Gemfury
# instead of rubygems.org.
class GemfuryGemHelper < Bundler::GemHelper
  def release_gem(built_gem_path=nil)
    guard_clean
    built_gem_path ||= build_gem
    tag_version { git_push } unless already_tagged?
    gemfury_push(built_gem_path) if gem_push?
  end

  protected

  def gemfury_push(path)
    sh("fury push --as=reverbnation '#{path}'")
    Bundler.ui.confirm "Pushed #{name} #{version} to gemfury.com."
  end
end

spec = Bundler::GemHelper.gemspec

desc "Build #{spec.name}-#{spec.version}.gem into the pkg directory."
task :build => "bundler:build"

desc "Create tag v#{spec.version} and build and push #{spec.name}-#{spec.version}.gem to Gemfury"
task :release => "bundler:build" do
  GemfuryGemHelper.new.release_gem
end

# require 'rake'
# require 'rake/testtask'
# require 'rdoc/task'

# desc 'Default: run unit tests.'
# task :default => :test

# TODO: The tests don't work at the moment.
# desc 'Test auto_complete plugin.'
# Rake::TestTask.new(:test) do |t|
#   t.libs << 'lib'
#   t.pattern = 'test/**/*_test.rb'
#   t.verbose = true
# end

# desc 'Generate documentation for auto_complete plugin.'
# Rake::RDocTask.new(:rdoc) do |rdoc|
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title    = 'Auto Complete'
#   rdoc.options << '--line-numbers' << '--inline-source'
#   rdoc.rdoc_files.include('README')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end
