# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
[0,1,2],#top
[3,4,5],#middle
[6,7,8],#last
[0,3,6],#1 vertical
[1,4,7],#2 vertical
[2,5,8],#3 verticl
[0,4,8],#1 across
[2,4,6]#2 across

]

def won?(board)
  WIN_COMBINATIONS.select do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      win_combination
    else
      false
    end
  end
end
