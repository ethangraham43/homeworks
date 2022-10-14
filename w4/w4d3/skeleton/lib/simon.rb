class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over == true
      self.take_turn
    end

    self.game_over_message
    self.reset_game


  end

  def take_turn
    if @game_over == false
      self.show_sequence
      self.require_sequence
      self.round_success_message
    end

    @sequence_length += 1
  end

  def show_sequence
    self.add_random_color

  end

  def require_sequence
    print "repeat back the sequence"
    until game_over == true
      user_in = gets.chomp
      if user_in != self.add_random_color
        @game_over == true
      end
    end

  end

  def add_random_color
    @seq << COLORS.sample

  end

  def round_success_message
    print "Round Success!"

  end

  def game_over_message
    print "Game Over!"

  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false

  end
end
