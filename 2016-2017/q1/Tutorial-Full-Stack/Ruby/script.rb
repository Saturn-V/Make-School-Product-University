puts "Feed me some text: "
text = gets.chomp

puts "Word's to redact, seperated by commas: "
redact = gets.chomp.downcase
redactArr = redact.split(",")

words = text.split(" ")

words.each do |word|
    redactArr.each do |redacted|
        if word.downcase == redacted
            print "REDACTED "
        elsif redactArr[redactArr.length] != word.downcase
            print word + " "
        end
    end
end

#TODO
iterate w/ multiple words,
redact said words



arr = ["Alex", "Kojin", "David"]

arr.sort!
