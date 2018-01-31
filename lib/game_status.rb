# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]


def won?(board)
    WIN_COMBINATIONS.each  do |winner|
        if winner.all? {|index| board[index] == "X"}
            return winner
        elsif winner.all? {|index| board[index] == "O"}
            return winner
        end
    end
    false
end

def full?(board)
    board.all? { |element| element == "X" || element == "O"}
end

def draw?(board)
    (!won?(board) && full?(board))
end

def over?(board)
    won?(board) || draw?(board)
end

def winner(board)
    if won?(board) == false
        return nil
    else
        a_winning_index = won?(board)[0]
        return board[a_winning_index]
    end
end



