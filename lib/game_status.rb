# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS =
[
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
    result = ""
    win_result = []
    WIN_COMBINATIONS.each do |win|
      if (board[win[0]] == board[win[1]] &&  board[win[0]] == board[win[2]] && board[win[0]] == "X") ||
         (board[win[0]] == board[win[1]] &&  board[win[0]] == board[win[2]] && board[win[0]] == "O")
        win_result << win[0]
        win_result << win[1]
        win_result << win[2]
      end
      result = win_result
    end
    result == [] ? false : result
end

def full?(board)
  board.none? { |b| b == ( " " || "" ) }
end

def empty?(board)
  board.all? { |b| b == ( " " || "" ) }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if result = won?(board)
    winner = board[result[0]]
  end
  winner
end
