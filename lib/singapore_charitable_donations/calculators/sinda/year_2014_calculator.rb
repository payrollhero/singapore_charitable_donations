module SingaporeCharitableDonations
  module Calculators
    module SINDA

      # Singapore Indian Development Association Fund contribution calculator for the year 2014.
      module Year2014Calculator

        class << self

          # @param [BigDecimal] total_wage
          # @return [BigDecimal] contribution amount
          def calculate(total_wages)
            case
            when total_wages <= 600.00
              BigDecimal "1.00"
            when total_wages <= 1_500.00
              BigDecimal "3.00"
            when total_wages <= 2_500.00
              BigDecimal "5.00"
            else # > 2_500.00
              BigDecimal "7.00"
            end
          end

          # @param [Date] date to be considered for calculation
          # @param [String] type of charitable contribution
          # @return [TrueClass, FalseClass]
          def applies_to?(date, type)
            date.year == 2014 && type == 'SINDA'
          end

        end

      end
    end
  end
end