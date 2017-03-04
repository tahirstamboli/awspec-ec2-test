require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--format html --out reports/awspec_results.html'
end
task :default => :spec
