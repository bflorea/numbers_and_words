module NumbersAndWords
  module Translations
    class Ro < Base
      include NumbersAndWords::Translations::Families::Latin
      include NumbersAndWords::Translations::Extensions::FractionSignificance

      def ones number, options = {}
	gender = options.has_key?(:gender) ? options[:gender] : :male
	
	t(:ones)[gender][number]
      end

      def tens_with_ones numbers, options = {}
        [tens(numbers[1]), ones(numbers[0], options)].join ' si '
      end

      def hundreds number, options = {}
        [ones(number, options), t(:hundreds)[number == 1 ? :one : :many]].join(' ')
      end

      def thousands number, options = {}
        [ones(number, options), t(:thousands)[number == 1 ? :one : :many]].join(' ')
      end
      
      def zero options = {}
        ones 0
      end

    end
  end
end
