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

def won?(board)
  WIN_COMBINATIONS.each do |win|
  test_position1 = win[0]
  test_position2 = win[1]
  test_position3 = win[2]

  position1 = board[test_position1]
  position2 = board[test_position2]
  position3 = board[test_position3]

    if (position1 == "X" && position2 == "X" && position3 == "X") || (position1 == "O" && position2 == "O" && position3 == "O")
         return win
      end
  end
  false
end
