# frozen_string_literal: true

require 'largest_palindrome_product/largest_palindrome_product'

RSpec.describe LargestPalindromeProduct do
  describe '.from_two_numbers_with' do
    subject { described_class.from_two_numbers_with(digits:) }

    context 'when 2 digits' do
      def digits = 2

      it { is_expected.to eq 9009 }
    end

    context 'when 3 digits' do
      def digits = 3

      it { is_expected.to eq 906_609 }
    end
  end
end
