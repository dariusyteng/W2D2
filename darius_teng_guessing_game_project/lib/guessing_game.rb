class GuessingGame
    def initialize(min, max)
        @secret_num = rand(min..max) 
# also passed specs with 'rand(max - min)'
        @num_attempts = 0
        @game_over = false
# why syntax error when '@game_over? = false'
    end

    def num_attempts
        @num_attempts
    end
    def game_over?
        @game_over
    end
    def check_num(n)
            if n == @secret_num
                @game_over = true
                p "you win"
            elsif n > @secret_num
                p "too big"
            else
                p "too small"
            end
            @num_attempts += 1
    end
    def ask_user
        p "Enter a number:"
        n = gets.chomp.to_i
        self.check_num(n)

    end


end
