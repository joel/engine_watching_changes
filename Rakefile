begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

load 'rails/tasks/statistics.rake'

Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = 'spec/**/*_spec.rb'
end

task :default => [ :spec ]
