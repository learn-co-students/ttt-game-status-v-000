# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |wc|
    wi1 = wc[0]
    wi2 = wc[1]
    wi3 = wc[2]
    bi = [board[wi1],board[wi2],board[wi3]]
    (bi.all? {|x| x == "X"}) || (bi.all? {|o| o == "O"})
  end
end



def full?(board)
  if board.none? {|spaces| spaces == " "}
    TRUE
  else
    FALSE
  end
end


def draw?(board)
  full?(board) && !won?(board)
end



def over?(board)
  draw?(board) || won?(board)
end


def winner(board)
  if won?(board)
    if board[won?(board)[0]] == "X" || board[won?(board)[0]] == "O"
      board[won?(board)[0]]
    end
  else won?(board)
  end
end

