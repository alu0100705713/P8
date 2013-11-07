$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :spec

desc "Ejecutar practica"
task :ejec do
 sh "ruby -Ilib /lib/matriz.rb"
end

desc "Ejecucion de pruebas rspec"
task :spec do
  sh "rspec --color --format documentation -Ilib -Ispec spec/matriz_spec.rb"
end

desc "Ejecucion de test con formato html"
task :thtml do
  sh "rspec --format html -Ilib -Ispec spec/matriz_spec.rb"
end