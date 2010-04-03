if ARGV.empty?
  puts "no argument given"
  exit!
end

require "fileutils"

FileUtils.copy "template.rb", "#{ARGV[0]}.rb"