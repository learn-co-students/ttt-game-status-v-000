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
 [6,4,2],
]
      
      def won?(board)
       WIN_COMBINATIONS.detect do |win_combo|
         postion_1 = board[win_combo[0]]
         postion_2 = board[win_combo[1]]
         postion_3 = board[win_combo[2]]
      
       postion_1 == "X" && postion_2 == "X" && postion_3 == "X" ||
       postion_1 == "O" && postion_2 == "O" && postion_3 == "O"
      end
    end
    
    def full?(board)
      board.all? do |position|
      position == "X" || position == "O"
    end
  end
  
 
  def draw?(board)
    !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end


def winner(board)
  won?(board) && board[won?(board)[0]]
end
