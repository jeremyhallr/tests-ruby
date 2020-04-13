def translate(sentence)
  new_sentence = []
  array = sentence.split(" ")
  array.each {|word|

# Case : if first letter is a vowel

  if word[0].scan(/[aeiou]/).length == 1
    new_sentence.push("#{word}ay")

# Case : if first letters "qu"

  elsif word[0..1].scan(/qu/).length == 1
    new_sentence.push("#{word[2..-1]}#{word[0..1]}ay")

# Case : if consonant before "qu"

  elsif word[1..2].scan(/qu/).length == 1
    new_sentence.push("#{word[3..-1]}#{word[0..2]}ay")

# Case : if 3 first letters are consonants

  elsif word[0..2].scan(/[^aeiou]/).length == 3
    new_sentence.push("#{word[3..-1]}#{word[0..2]}ay")

# Case : if 2 first letters are consonants

  elsif word[0..1].scan(/[^aeiou]/).length == 2
    new_sentence.push("#{word[2..-1]}#{word[0..1]}ay")

# Case : if first letter is consonant

  elsif word[0..0].scan(/[^aeiou]/).length == 1
    new_sentence.push("#{word[1..-1]}#{word[0]}ay")

  end
  }
  p new_sentence.join(" ")
end


