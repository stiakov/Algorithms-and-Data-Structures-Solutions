
  def balanced_brackets?(string)
    stack = []
    output = false

    string.each_char do |char|
      case char
      when '['
        stack << char
      when '('
        stack << char
      when '{'
        stack << char
      when ']'
        if stack[-1] == '['
          output = true
          stack.pop
        else
          return output = false
        end
      when ')'
        if stack[-1] == '('
          output = true
          stack.pop
        else
          return output = false
        end
      when '}'
        if stack[-1] == '{'
          output = true
          stack.pop
        else
          return output = false
        end
      end
    end
    output
  end

puts balanced_brackets?('({}{}alpha)')
puts 'fin'
