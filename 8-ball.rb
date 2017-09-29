if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

def readlines(file_name)
  file = File.new(file_name, "r:UTF-8")
  array = file.readlines
  file.close
  array
end

greet = __dir__ + "/data/greetings.txt"
answ = __dir__ + "/data/answers.txt"

if File.exist?(greet) && File.exist?(answ)
  greetings = readlines(greet)
  answers = readlines(answ)
else
  puts "Файл не найден"
end


puts greetings.sample + "\n\r"
sleep 1.5
puts answers.sample