class Round

  def play
    prompt_user
    get_random_number
    number_of_guesses
    check_guesses
    tell_answer
  end

  def get_guess
    @guess_counter
  end

  def get_win
    @win_counter
  end

  private

  def prompt_user
    puts "guess my number!"
  end

  def get_random_number
    @random_number = rand(10)+1
  end

  def get_input
    @guess = gets.chomp.to_i
  end

  def compare_number
    if check_guess?
      puts "that is the correct answer!"
    else
      puts "#{@guess} is the wrong answer."
    end
  end

  def check_guess?
    @random_number == @guess
  end

  def number_of_guesses
    @guess_counter = 0
    @max_guess = 3
  end

  def check_guesses
    @win_counter = 0
    @max_guess.times do
      @guess_counter += 1
      get_input
      compare_number
      if check_guess?
        @win_counter += 1
        break
      end
    end
  end

  def tell_answer
    puts "the correct answer was #{@random_number}"
  end
end

class GuessingGame

  def initialize
    msg =  "Welcome to the crazy guessing game!"
    puts msg
    puts "-" * msg.length
    @num_rounds = 0
  end

  def execute_rounds
    guess_counter = 0
    win_counter = 0
    prompt_user_for_rounds
    @num_rounds.times do
      game = Round.new
      game.play
      guess_counter += game.get_guess
      win_counter += game.get_win
    end
    puts "you guessed #{guess_counter} times and won #{win_counter} times"
    puts "your average number of guesses per round is #{guess_counter/@num_rounds}"
  end

  def prompt_user_for_rounds
    puts "how many rounds would you like to play?"
    @num_rounds = gets.chomp.to_i
  end

  def number_of_guesses
    @num_guesses = 0
  end
end

game = GuessingGame.new
game.execute_rounds
