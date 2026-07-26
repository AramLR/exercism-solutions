module Chess
  RANKS = 1..8
  FILES = "A".."H"

  def self.valid_square?(rank, file)
    rank in RANKS and file in FILES
  end

  def self.nickname(first_name, last_name)
    (first_name[...2] + last_name[-2...]).upcase
  end

  def self.move_message(first_name, last_name, square)
    square_rank = square[1].to_i
    square_file = square[0]
    nickname = nickname first_name,last_name

    if not valid_square? square_rank,square_file
      return "#{nickname} attempted to move to #{square}, but that is not a valid square"
    end
    
    "#{nickname} moved to #{square}"

  end
end

#p Chess::RANKS
#p Chess::FILES
#p Chess.valid_square?(1, 'A')
#p Chess.nickname("John", "Doe")
#p Chess.move_message("John", "Doe", "A1")
