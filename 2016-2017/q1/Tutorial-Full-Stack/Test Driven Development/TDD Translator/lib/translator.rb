class Translator

  def initialize(dictionary)
    @dictionary = dictionary
  end

  def translate_forward(sentence)
    sentenceArray = sentence.split

    i = 0

    sentenceArray.each do |word|
        if @dictionary[word]
            sentenceArray[i] = @dictionary[word]
        end
        i += 1
    end

    sentence = sentenceArray.join(" ")

  end

  def translate_reverse(sentence)
      sentenceArray = sentence.split

      i = 0

      @dictionary.each do |key, val|
          if @dictionary.has_value?(val)
              sentenceArray[i] = key
          end
          i += 1
      end

      sentence = sentenceArray.join(" ")
  end
end
