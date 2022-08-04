require 'erb'
$has = false
def abs(path)
  path = File.absolute_path(File.expand_path(path))
end

def abs(path)
  path = File.absolute_path(File.expand_path(path))
end
# lang functions
def start
  $has = true
end
def say (what)
  if $has
    puts what
  else
    puts "FATAL ERROR: PROGRAM NOT STARTED (0,0)"
    puts "perhap's try adding the word start to the top of your file?"
    exit 1
  end
end
def done 
  if $has
    exit 0
  else 
    puts "FATAL ERROR: CANNOT KILL A NON STARTED PROGRAM (0,0)"
    puts "perhap's try adding the word start to the top of your file?"
    exit 1
  end
end
file = ARGV[0]

file = abs(file)

puts "running:" + file

load file
