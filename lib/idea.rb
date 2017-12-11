def won?(board)
WIN_COMBINATIONS.any? do |winning_arrays|
    winning_arrays.each do |array_items|
        if array_items[0] == "X" && array_items[1] == "X" && array_items[2] == "X"
        elsif array_items[0] == "O" && array_items[1] == "O" && array_items[2] == "O"
        end
    end
  end
end
