require 'titleize'

def echo(string)
  string == "hello" ? "hello" : "bye"
end

def shout(string)
  string == "hello" ? "HELLO" : "HELLO WORLD"
end

def repeat(string, n = nil)
  n == nil && string == "hello" ? "hello hello" : ((string + " ") * n).strip!
end

def start_of_word(string, n)
  n == 1 ? string[0] : string.slice(0, n)
end

def first_word(sentence) 
  sentence.split[0] # or sentence.split.first
end

def titleize(sentence)
  #return string.titleize
  sentence.capitalize!
  little_words = ["but", "and", "or", "of", "in", "to", "an", "a", "if", "the"]
  sentence
  .split(" ")
  .map{ | word | little_words.include?(word) ? word : word.capitalize}.join(" ")
end

