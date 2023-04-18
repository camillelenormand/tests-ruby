def who_is_bigger(a, b, c)
 if a == nil || b == nil || c == nil
  return "nil detected"
 elsif a > b && a > c
  return "a is bigger"
 elsif b > a && b > c
  return "b is bigger"
 elsif c > a && c > b
  return "c is bigger"
 else
  return
 end
end

def reverse_upcase_noLTA(string)
  return string
    .upcase
    .gsub("L", "")
    .gsub("T", "")
    .gsub("A", "")
    .reverse
end

def array_42(array)
  array.include?(42) 
end

def magic_array(array)
  array
  .flatten
  .sort()
  .map{ |element| element * 2}
  .reject! { |element | element % 3 == 0 }
  .uniq
  .sort
end