module RaceBet
  class Race

    attr_accessor :score

    def initialize(guesses, winners)
      @guesses, @winners = guesses, winners
      @score = 0
      calculate_score
    end

    private

    AWARDS = [15, 10, 5, 3, 1]

    def calculate_score
      @guesses.each_with_index do |value, index|
        self.score += AWARDS[index] and next if value == @winners[index]
        self.score += 1 if @winners.include?(value)
      end
    end

    class << self
      def score(guesses, winners)
        RaceBet::Race.new(guesses, winners).score
      end
    end

  end
end
