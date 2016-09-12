module RaceBet
  class Race

    def initialize(guesses, winners)
      @guesses, @winners = guesses, winners
    end

    def calculate_score
      # TODO
    end

    private

    AWARDED_POINTS = [15, 10, 5, 3, 1]

    def calculate_exact_guesses

    end

    class << self
      def score(guesses, winners)
        RaceBet::Race.new(guesses, winners).calculate_score
      end
    end

  end
end
