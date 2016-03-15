# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
        # top row win
        [0, 1, 2],
        # middle row win
        [3, 4, 5],
        # bottom row win
        [6, 7, 8],
        # vertical left column win
        [0, 3, 6],
        # vertical middle column win
        [1, 4, 7],
        # vertical last column win
        [2, 5, 8],
        # diagonal left to right win
        [0, 4, 8],
        # diagonal right to left win
        [2, 4, 6]
]

def won?(board)
    WIN_COMBINATIONS.detect do |win_combo|
        position_taken?(board, win_combo[0]) && (board[win_combo[0]] == board[win_combo[1]]) && (board[win_combo[1]] == board[win_combo[2]])
    end
end

def full?(board)
    WIN_COMBINATIONS.all? do |full_board|
        position_taken?(board, full_board[0])
    end
end

def draw?(board)
    if full?(board) && !won?(board)
        return true
    end
end

def over?(board)
    if full?(board) || won?(board) || draw?(board)
        return true
    end
end

def winner(board)
    WIN_COMBINATIONS.detect do |winner|
        if position_taken?(board, winner[0]) && board[winner[0]] == "X" && board[winner[1]] == "X" && board[winner[2]] == "X"
            return "X"
        elsif position_taken?(board, winner[0]) && board[winner[0]] == "O" && board[winner[1]] == "O" && board[winner[2]] == "O"
            return "O"
        end
    end
end