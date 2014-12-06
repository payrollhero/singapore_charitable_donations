module SingaporeCharitableDonations
  module Calculators

    class << self

      # @param [Date] date Date of contribution
      # @param [String] type The type of contribution fund. Can be CDAC, ECF, MBMF, SINDA
      # @return [#calculator] The calculator depending on the type and date.
      def get(date:, type:)
        calculators.find { |calculator| calculator.applies_to?(date, type) }
      end

      private

      def calculators
        [
          CDAC::Year2014Calculator,
          CDAC::Year2015Calculator,
          ECF::Year2014Calculator,
          ECF::Year2015Calculator,
          MBMF::Year2009Calculator,
          SINDA::Year2014Calculator,
          SINDA::Year2015Calculator,
        ]
      end

    end

  end
end

require_relative 'calculators/cdac/year_2014_calculator'
require_relative 'calculators/cdac/year_2015_calculator'
require_relative 'calculators/ecf/year_2014_calculator'
require_relative 'calculators/ecf/year_2015_calculator'
require_relative 'calculators/mbmf/year_2009_calculator'
require_relative 'calculators/sinda/year_2014_calculator'
require_relative 'calculators/sinda/year_2015_calculator'
