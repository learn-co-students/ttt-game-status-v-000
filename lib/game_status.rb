require 'set'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board, who = false)
  moves = Hash.new
  moves["X"] = Set[]
  moves["O"] = Set[]
  index = 0
  board.each do |space|
    if space == "X" || space == "O"
      moves[space].add(index)
    end
    index += 1
  end
  WIN_COMBINATIONS.each do |combination|
    combo = Set.new(combination)
    if combo.subset?(moves["X"])
      return who ? "X" : combination
    elsif combo.subset?(moves["O"])
      return who ? "O" : combination
    end
  end
  return nil
end

def draw?(board)
  full?(board) && !won?(board)
end

def full?(board)
  board.reject{|i| i == "X" || i =="O"}.length == 0
end



def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  won?(board, true)
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
