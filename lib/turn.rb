def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  inputNumber = input_to_index(input)

  if valid_move?(board, inputNumber) == true
    move(board, inputNumber, value = "X")
    display_board(board)
  else
    continue = true
    while continue == true
      puts "Please enter 1-9:"
      input = gets.strip
      inputNumber = input_to_index(input)
        if valid_move?(board, inputNumber) == true
          move(board, inputNumber, value = "X")
          display_board(board)
          continue = false
        else
          continue = true
        end
  end
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    return false
  elsif position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return nil
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end
