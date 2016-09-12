module RaceBet
  class Race

    AWARDS = [15, 10, 5, 3, 1].freeze

    attr_reader :score

    def initialize(guesses, winners)
      @guesses, @winners = guesses, winners
      @score = 0
      calculate_score
    end

    private

    def calculate_score
      @guesses.each_with_index do |prediction, index|
        @score += AWARDS[index] and next if prediction == @winners[index]
        @score += 1 if @winners[0..4].include?(prediction)
      end
    end

    class << self
      def score(guesses, winners)
        RaceBet::Race.new(guesses, winners).score
      end
    end

  end
end
