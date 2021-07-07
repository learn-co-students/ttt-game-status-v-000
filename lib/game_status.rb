# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top
  [2,5,8], #right
  [6,7,8], #bottom
  [0,4,8], #diagonal
  [2,4,6], #diagonal
  [3,4,5], #middle-hor
  [1,4,7], #middle-vert
  [0,3,6]  #left
]

def find_win?(board)
  WIN_COMBINATIONS.any? do |outer| #matches any wins returning boolean returns true
    board[outer[0]] == board[outer[1]] && board[outer[2]] == board[outer[0]] &&  board[outer[0]] != " "
  end
end

def won?(board)
  WIN_COMBINATIONS.detect do |outer_elements| #matches any wins returning boolean
    board[outer_elements[0]] == board[outer_elements[1]] && board[outer_elements[2]] == board[outer_elements[0]] &&  board[outer_elements[0]] != " "
 end
end


def full?(board)
  if board.all? { |i| i != " "} #true for draw
    true
  elsif board.any? { |board_element| board_element != " " }  #false for in progress game
      false
    end
end

def draw?(board)
     full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end


def winner(board)
  WIN_COMBINATIONS.select do |e| #return winning char

    if board[e[0]] == "X" && board[e[1]] == "X" && board[e[2]] == "X"
     return "X"
   elsif board[e[0]] == "O" && board[e[1]] == "O" && board[e[2]] == "O"
     	return "O"
    end
  end
 if draw?(board)
   nil
end
end
