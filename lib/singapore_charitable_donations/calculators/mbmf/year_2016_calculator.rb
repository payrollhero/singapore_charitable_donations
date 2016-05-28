module SingaporeCharitableDonations
  module Calculators
    module MBMF

      # Mosque Building and Mendaki Fund contribution calculator for June 1st, 2016 onwards
      module Year2016Calculator
        class << self

          # @param [BigDecimal] total_wages
          # @return [BigDecimal] contribution amount
          def calculate(total_wages)
            case
            when total_wages <= 1_000.00
              BigDecimal "3.00"
            when total_wages < 2_000.00
              BigDecimal "4.50"
            when total_wages < 3_000.00
              BigDecimal "6.50"
            when total_wages < 4_000.00
              BigDecimal "15.00"
            when total_wages < 6_000.00
              BigDecimal "19.50"
            when total_wages < 8_000.00
              BigDecimal "22.00"
            when total_wages < 10_000.00
              BigDecimal "24.00"
            else # total_wages >= 10_000.00
              BigDecimal "26.00"
            end
          end

          # @param [Date] date to be considered for calculation
          # @param [String] type of charitable contribution
          # @return [TrueClass, FalseClass]
          def applies_to?(date, type)
            date >= CUTOFF_DATE && type == 'MBMF'
          end

          private

          CUTOFF_DATE = Date.new(2016,6,1)

        end
      end
    end
  end
end
