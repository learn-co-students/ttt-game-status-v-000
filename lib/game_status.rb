# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],#top
  [3, 4, 5],#mid
  [6, 7, 8],#bot
  [0, 3, 6],#left vert
  [1, 4, 7],#mid vert
  [2, 5, 8],#right vert
  [0, 4, 8],#slash1
  [2, 4, 6]#slash2
]

def won?(board)

  win_arr = []

  return false if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  WIN_COMBINATIONS.each do |array|

    if (board[array[0]] == "X" && board[array[1]] == "X" && board[array[2]] == "X") || (board[array[0]] == "O" && board[array[1]] == "O" && board[array[2]] == "O")
      win_arr << array
    end
  end

    if win_arr.length == 0
      return false
    else
      return win_arr[0]
    end
end

def full?(board)
  if board.none? {|i| i == " "}
    return true
  else
    return false
  end
end

def draw?(board)
  if (full?(board) == true) && (won?(board) == false)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) == true
    return true
  elsif draw?(board) == true
    return true
  elsif full?(board) == true
    return true
  else
    return false
  end
end

def winner?(board)
  if (won?(board) == true) && (win_arr[0][1] == "X" && win_arr[0][2] == "X" && win_arr[0][3] == "X")
    return "X"
  elsif (won?(board) == true) && (win_arr[0][1] == "O" && win_arr[0][2] == "O" && win_arr[0][3] == "O")
    return "O"
  else
    return nil
  end
end

def winner(board)

  if won?(board) != false && draw?(board) == false

    WIN_COMBINATIONS.each do |array|

      if (board[array[0]] == "X" && board[array[1]] == "X" && board[array[2]] == "X")
        return board[array[0]]
      elsif (board[array[0]] == "O" && board[array[1]] == "O" && board[array[2]] == "O")
        return board[array[0]]
      else
        false
      end
    end
  end
end
