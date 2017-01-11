def find_closing_parenthesis(sentence, open_position)
  array = sentence.split('')
  next_position = open_position + 1
  count = 0

  while next_position < array.length
    if array[next_position] == ")" && count == 0
      return next_position
    elsif array[next_position] == ")" && count != 0
      count -= 1
    else
      count += 1
    end
    next_position += 1
  end
end
