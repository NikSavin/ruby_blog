namespace :test do
  desc 'Hello World!'
  task hello_world: :environment do
    puts 'Hello people!'
  end
end