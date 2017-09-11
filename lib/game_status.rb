# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]


def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    all_x = win_combination.all? do |index|
      'X' == board[index]
    end
    all_y = win_combination.all? do |index|
      'O' == board[index]
    end
    if all_x or all_y
      return win_combination
    end
  end
  false
end

def full?(board)
  board.all?{ |slot| 'X' == slot or 'O' == slot }
end

def draw?(board)
  (!won?(board) and full?(board)) ? true : false
end

def over?(board)
  (won?(board) or full?(board)) ? true : false
end

def winner(board)
  (win_combination = won?(board)) ? board[win_combination[0]] : nil
end
