# frozen_string_literal: true

class MultiplesOf3Or5
  class << self
    def sum_of_multiples_below(ceiling)
      multiples_below(ceiling).reduce(&:+)
    end

    private

    def multiples_below(ceiling)
      (3...ceiling).filter { |n| multiple?(n) }
    end

    def multiple?(integer)
      [(integer % 3), (integer % 5)].any?(&:zero?)
    end
  end
end
