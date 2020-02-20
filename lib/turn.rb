def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
  index = move.to_i-1
end

def valid_move?(board, index)
	if index >= 0 && index <= 8
		position_empty?(board, index)
	else
		puts "That space is not on the board."
		false
	end
end

def position_empty?(board, index)
  if board[index] == " "
    true
  else
    puts "That space is already taken."
    false
  end
end

def move(board, index, char="X")
	board[index] = char
end

def turn
	puts "Welcome to Tic Tac Toe!"
	board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
	display_board(board)

	good_move = false
	until good_move == true
		puts "Where would you like to go? (enter 1-9)"
		user_input = gets.strip
		good_move = valid_move?(board, input_to_index(user_input))
	end

	move(board, input_to_index(user_input))
	display_board(board)
end
