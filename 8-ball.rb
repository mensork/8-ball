if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

greet = __dir__ + "/data/greetings.txt"
answ = __dir__ + "/data/answers.txt"

if File.exist?(greet) && File.exist?(answ)
  file = File.new(greet, "r:UTF-8")
  greetings = file.readlines
  file.close
  file = File.new(answ, "r:UTF-8")
  answers = file.readlines
  file.close
else
  puts "Файл не найден"
end


puts greetings.sample + "\n\r"
sleep 1.5
puts answers.sample