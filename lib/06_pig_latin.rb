def translate(word)
  #word.match(/^[aeiou]/i) ? word + "ay" : word.reverse + "ay"
  case word
  when /^[bcdfghjklmnpqrstvwxyz]{3}[A-Za-z]+$/
    then word.reverse + "ay"
  when /^[bcdfghjklmnpqrstvwxyz]{2}[A-Za-z]+$/
    then
      pre = word.slice(0..1)
      post = word.slice(2..5)
      res = post + pre + "ay"
  when /^[bcdfghjklmnpqrstvwxyz][A-Za-z]+$/
    then word.reverse + "ay"
  when /^[aeiouAEIOU][a-zA-Z]*/ 
    then word + "ay"
  when split.length == 2
    then word.split[0] + "ay" + word.split[1].reverse + "ay"
  when /^[aeiouAEIOU][a-zA-Z]*/ 
    then word + "ay"
  else
end
end
 