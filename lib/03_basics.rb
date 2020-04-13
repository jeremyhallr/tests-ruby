def who_is_bigger(a, b, c)
    if a  == nil|| c == nil || b == nil
      return "nil detected"
    elsif  a > b && a > c
      return "a is bigger"
    elsif b > a && b > c
      return "b is bigger"
    else
      return "c is bigger"
    end
end

def reverse_upcase_noLTA(string)
  return string.reverse.upcase.scan(/[^LTA]/i).join("")
end

def array_42(array)
   return array.include? 42
end

def magic_array(array)
  new_array = array.flatten.uniq.sort.collect {|x| x * 2}
  return new_array.delete_if  {|n| n % 3 == 0 }
end