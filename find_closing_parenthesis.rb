def find_closing_parenthesis(sentence, open_position)
  # placeholder for iteration
  open_parenth = 0 
  # trunate string to start at open parenthesis position to end (all we care about)
  searching_string = string[open_position..-1]
  # declare variable for later
  string_remainder = open_position
  # turn string into array for iteration
  searching_string.split("").each_with_index do |character, index|
    # increment count of opened parenthesis
    if character == "("
      open_parenth += 1
    # decrement count for a closed parenthesis
    elsif character == ")"
      open_parenth -= 1
      # if we've incremented and decremented the same amount, we have an even amount of opened and closed parenthesis
      if open_parenth == 0
        # return the position of this character
        return index + string_remainder
      end
    end
  end
end