puts "Gimme a sentence m8: "
userInput = gets.chomp

def capitalizePrefix(sentence)
    sentenceArray = sentence.split(" ")

    sentenceArray.each do |word|
        word.capitalize!
    end

    sentence = sentenceArray.join(" ")

    puts sentence
end

capitalizePrefix(userInput)
