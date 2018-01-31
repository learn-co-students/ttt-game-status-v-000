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
  WIN_COMBINATIONS.detect do |combination| #pass winning pos permutations to test against board
    board[combination[0]] == board[combination[1]] && #do tokens in pos1 and pos2 match
    board[combination[1]] == board[combination[2]] && #do tokens in pos2 and pos3 match > transitive: all 3 combo pos match
    position_taken?(board, combination[0]) #are pos occupied and don't just match b/c empty
  end #auto fails if empty or no combinations made
end


def full?(board)
  board.all? {|position| position != " "} #for all pos in board not empty
end


def draw?(board)
  !won?(board) && full?(board) #not won and full
end


def over?(board)
  won?(board) || draw?(board) || full?(board) #won or draw or full
end


def winner(board)
  if winning_combination = won?(board) #assigns winning array [x, y, z] to var
    board[winning_combination[0]] #returns token in 0 index of winning array
  end
end
