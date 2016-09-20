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
  [6,4,2]
]

def won?(board)
   WIN_COMBINATIONS.any? do |win_index|
     win_index.any? do |win_combination|
    if win_combination != board
      false
    else WIN_COMBINATIONS.select do |win_combination|
      if board == win_combination
        win_combination.to_a
          end
        end
      end
    end
  end
end
