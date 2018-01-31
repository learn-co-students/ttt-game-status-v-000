# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
]
def won?(board)
   if WIN_COMBINATIONS.each do |win_combo|
    windex1 = win_combo[0]
    windex2 = win_combo[1]
    windex3 = win_combo[2]

    p1 = board[windex1]
    p2 = board[windex2]
    p3 = board[windex3]
        if p1 == "X" && p2 == "X" && p3 == "X"
          return win_combo
        end
        if p1 == "O" && p2 == "O" && p3 == "O"
          return win_combo
        end
      end
    else
      false
    end
  end

def full?(board)
   board.all? do |char|
    char == "X" || "O"
    char != " "
    end
end

def draw?(board)
  full?(board) && !(won?(board))
end

def over?(board)
  full?(board) || draw?(board) || won?(board)
end

def winner(board)
  if WIN_COMBINATIONS.each do |win_combo|
   windex1 = win_combo[0]
   windex2 = win_combo[1]
   windex3 = win_combo[2]

   p1 = board[windex1]
   p2 = board[windex2]
   p3 = board[windex3]
       if p1 == "X" && p2 == "X" && p3 == "X"
         return "X"
       end
       if p1 == "O" && p2 == "O" && p3 == "O"
         return "O"
       end
     end
   else
     false
   end
 end
