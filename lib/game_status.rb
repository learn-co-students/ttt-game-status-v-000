board = [" "," "," "," "," "," "," "," "," ",]
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  empty = board.all? do |position|
    position == " "
  end
  if empty 
    return false
  end
WIN_COMBINATIONS.each do |combo|
    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]
      if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return combo
      end
    end
    false
  end

def full?(board)
  board.none?{|position| position == " "}
end

def draw?(board)
  if won?(board) != false
    return false
  elsif board.any?{|position| position == " "}
    return false
  end
  board.none?{|position| position == " "}
  return true
end

def over?(board)
  if won?(board) != false
    return true
  elsif  draw?(board) == true
    return true
  else
    false
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |combo|
    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]
    if (position_1 == "X" && position_2 == "X" && position_3 == "X")
      return "X"
    elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return "O"
    end
  end
  false
  if won?(board) != true
    return nil
  end
end


      


  

























