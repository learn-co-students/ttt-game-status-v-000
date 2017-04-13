# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
   WIN_COMBINATIONS.detect do |win_combination|
     win_combination.all? do |win_combination_index|
       board[win_combination_index] == "X" ||
       win_combination.all? do |win_combination_index|
          board[win_combination_index] == "O"
       end
     end
   end
end

def full?(board)
  board.none? { |positions| positions == " "}
end

def draw?(board)
  if won?(board)
    false
  elsif full?(board)
    true
  else
    false
  end
end


def over?(board)
  if won?(board)
    true
  elsif draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if WIN_COMBINATIONS.detect do |win_combination|
      win_combination.all? do |win_combination_index|
        board[win_combination_index] == "X"
      end
    end
    "X"
  elsif WIN_COMBINATIONS.detect do |win_combination|
    win_combination.all? do |win_combination_index|
        board[win_combination_index] == "O"

      end
    end
    "O"
  end
end
