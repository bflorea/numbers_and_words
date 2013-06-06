module NumbersAndWords
  module Translations
    class Ro < Base
      include NumbersAndWords::Translations::Families::Latin
      include NumbersAndWords::Translations::Extensions::FractionSignificance

      DEFAULT_POSTFIX = :combine

      def ones number, options = {}
        t([options[:prefix], :ones, options[:postfix] || DEFAULT_POSTFIX].join('.'))[number]
      end

      def tens_with_ones numbers, options = {}
        [tens(numbers[1]), ones(numbers[0], options)].join ' si '
      end

      def hundreds number, options = {}
        [ones(number), t(:hundreds)[number == 1 ? :one : :many]].join(' ')
      end

      def thousands number, options = {}
        [ones(number), t(:thousands)[number == 1 ? :one : :many]].join(' ')
      end

      def zero options = {}
        ones 0
      end

    end
  end
end
