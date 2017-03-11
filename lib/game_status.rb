# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def display_board
  puts "#{board[0]} | #{board[1]} | #{board}[2]}"
  puts "-----------"
end

def move (index, current_player = "X")
  board[index] = current_player
end

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end
=begin
[" ", " ", " "], Top
[" ", " ", " "], Middle
[" ", " ", " "]; Bottom


board array example
["0", "1", "2"], Top
["3", "4", "5"], Middle
["6", "7", "8"]; Bottom

Top
["0", "1", "2"], Top
[" ", " ", " "], Middle
[" ", " ", " "]; Bottom

Middle
[" ", "1", " "], Top
[" ", "4", " "], Middle
[" ", "7", " "]; Bottom

Left
["0", " ", " "], Top
["3", " ", " "], Middle
["6", " ", " "] Bottom

Bottom
[" ", " ", " "], Top
[" ", " ", " "], Middle
["6", "7", "8"]; Bottom


top       [0]  [1]  [2]
board = ["X", "X", "X", " ", " ", " ", " ", " ", " ",]

Middle                   [3] [4]  [5]
board = [" ", " ", " ", "X", "X", "X", " ", " ", " ",]

Bottom                                  [6]  [7]  [8]
board = [" ", " ", " ", " ", " ", " ", "X", "X", "X",]

Left Vertical
         [0]            [3]            [6]
board = ["X", " ", " ", "X", " ", " ", "X", " ", " ",]

Middle Vertical
               [1]            [4]            [7]
board = [" ", "X", " ", " ", "X", " ", " ", "X", " ",]

Right Vertical
                   [2]            [5]             [8]
board = [" ", " ", "X", " ", " ", "X", " ", " ", "X",]

Crossing left to right
         [0]                 [4]                  [8]
board = ["X", " ", " ", " ", "X", " ", " ", " ", "X",]

Crossing right to left
                   [2]        [4]       [6]
board = [" ", " ", "X", " ", "X", " ", "X", " ", " ",]
=end
