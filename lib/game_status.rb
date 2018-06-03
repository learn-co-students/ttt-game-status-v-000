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

def won?(position_taken?)
  # if empty board, return FALSE
  if position_taken? == true 
    return false 
  # if draw, return FALSE
  elsif position_taken?.full? == true && !WIN_COMBINATIONS
    return false 
  # if not empty board and not draw, then evaluate for winning combo 
  else 
    
  end 
end   



position_taken?.detect do |winning_array|
    if artist_element.class != Array
      puts "Artist: #{artist_element}"
    else
      artist_element.each do |album_element|
        if album_element.class != Array
          puts "Album: #{album_element}"
        else
          album_element.each do |song_element|
            puts "Song: #{song_element}"


def won?(board)
  if position_taken?.each do |winning_array|
    winning_array.WIN_COMBINATIONS?
  end
end

# Define full? Method




# Define draw? Method




# Define over? Method




# Define winner Method




