module SingaporeCharitableDonations
  module Calculators
    module MBMF

      # Mosque Building and Mendaki Fund contribution calculator for the year 2009 onwards.
      module Year2009Calculator
        class << self

          # @param [BigDecimal] total_wages
          # @return [BigDecimal] contribution amount
          def calculate(total_wages)
            case
            when total_wages <= 200.00
              BigDecimal "0.00"
            when total_wages < 1_001.00
              BigDecimal "2.00"
            when total_wages < 2_001.00
              BigDecimal "3.50"
            when total_wages < 3_001.00
              BigDecimal "5.00"
            when total_wages < 4_001.00
              BigDecimal "12.50"
            else # total_wages >= 4_001.00
              BigDecimal "16.00"
            end
          end

          # @param [Date] date to be considered for calculation
          # @param [String] type of charitable contribution
          # @return [TrueClass, FalseClass]
          def applies_to?(date, type)
            date.year >= 2009 && date < CUTOFF_DATE && type == 'MBMF'
          end

          private

          CUTOFF_DATE = Date.new(2016,6,1)

        end
      end
    end
  end
end
