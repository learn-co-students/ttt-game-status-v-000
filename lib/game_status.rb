require 'byebug'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

# top_row_win = [0,1,2]

def won?(board)
  WIN_COMBINATIONS.each do |win_group|

    if win_group.all? {|win_index| board[win_index] == "X"}
      #[0,1,2] ("X", "X", "X") ||("o", "o", "o"
      return win_group
    elsif win_group.all? {|win_index| board[win_index] == "O"}
       return win_group
    else
      false
    end
  end

  !WIN_COMBINATIONS.each do |win_group|
    return false
  end
end

def full?(board)
  !board.include?(" ")
  # board.all? {|position| position == "X" || position == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  # won?(board) ? (something) : (something)
  #["X", " ", "O"
  # "X", "O", " ",
  # "O", " ", " "]
  #
  # [2,4,6] = win_group
  # # ["O", "O", "O"]
  # # board[0]
  if winning = won?(board)#[2,4,6]
    # winning = [2,4,6]
    return board[winning.first] #[O,O,O]
  else
    nil
  end
  # won?(board)? board(won?(board[0])) : nil
  # # if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
end
#
# elsif board = ("X", "X", "X", " ", " ", " ", " ", " ", " ")
#   WIN_COMBINATIONS[0]
# elsif board = (" ", " ", " ", "X", "X", "X", " ", " ", " ")
#   WIN_COMBINATIONS[1]
# elsif board = (" ", " ", " ", " ", " ", " ", "X", "X", "X")
#   WIN_COMBINATIONS[2]
# elsif board = ("X", " ", " ", "X", " ", " ", "X", " ", " ")
#   WIN_COMBINATIONS[3]
# elsif board = (" ", "X", " ", " ", "X", " ", " ", "X", " ")
#   WIN_COMBINATIONS[4]
# elsif board = (" ", " ", "X", " ", " ", "X", " ", " ", "X")
#   WIN_COMBINATIONS[5]
# elsif board = ("X", " ", " ", " ", "X", " ", " ", " ", "X")
#   WIN_COMBINATIONS[6]
# elsif board = (" ", " ", "X", " ", "X", " ", "X", " ", " ")
#   WIN_COMBINATIONS[7]
