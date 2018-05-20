
def turn_count(board)
  counter = 0
  while counter < 10
    board.each do | space |
      if space == "X" || space == "O"
        counter += 1
      end
    end
    return counter
  end
end

def current_player(board)
  if turn_count(board) == 0
    return "X"
  elsif turn_count(board).odd?
    return "O"
  elsif turn_count(board).even?
    return "X"
  end
end
