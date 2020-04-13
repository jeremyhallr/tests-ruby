def echo(sentence)
  return sentence
end

def shout(sentence)
  return sentence.upcase
end

def repeat(word, repetition=2)
  a = []
  repetition.times { a.push(word) }
  return a.join(" ")
end

def start_of_word(word, number_of_letter=0)
  return word[0..number_of_letter-1]
end

def first_word(sentence)
  return sentence.split(" ")[0]
end

def titleize(sentence)
  title = []
  i = 0
  array = sentence.split(" ")
  array.each { |word|
    if word == "and" || i != 0 && word == "the"
      title.push(word)
      i += 1
    else
      title.push(word.capitalize)
      i += 1
    end
  }
  return title.join(" ")
end