namespace :test do
  desc 'Hello World!'
  task hello_world: :environment do
    puts 'Hello people!'
  end

  desc 'Count ruby file'
  task count_ruby_file: :environment do
  	puts Dir['**/*'].select{ |f| File.extname(f) == '.rb'}.length
  end

  desc 'Count lines in ruby files'
  task cnt_ruby_line: :environment do
  	cnt = 0
  	Dir['**/*'].select { |f| File.extname(f) == '.rb' }
  			   .each{ |fn| f = File.open(fn, 'r');
  			   	           f.each{ |l| cnt+=1 }}
  puts cnt
  end
end  