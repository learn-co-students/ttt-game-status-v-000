
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
 WIN_COMBINATIONS.detect do |combo|
    element_1 = combo[0]
    element_2 = combo[1]
    element_3 = combo[2]
    index_1 = board[element_1]
    index_2 = board[element_2]
    index_3 = board[element_3]
    index_1 == index_2 && index_2 == index_3 && position_taken?(board, element_1)
  end
end



def full?(board)
 board.all? do |index|
   index == "X" || index == "O"
  end
 end

def draw?(board)
 full?(board) && !won?(board)
end

def over?(board)
full?(board) || won?(board) || draw?(board)
end

def winner(board)
   if winning = won?(board)
   board[winning[0]]
 end
end
