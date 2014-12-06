module SingaporeCharitableDonations
  module Calculators
    module CDAC

      # Chinese Development Assistance Council (CDAC) Fund contribution calculator for year 2014.
      module Year2014Calculator
        class << self

          # @param [BigDecimal] total_wage
          # @return [BigDecimal] contribution amount
          def calculate(total_wage)
            case
            when total_wage < 2_000.00
              BigDecimal "0.50"
            when total_wage >= 2_000.00
              BigDecimal "1.00"
            end
          end

          # @param [Date] date to be considered for calculation
          # @param [String] type of charitable contribution
          # @return [TrueClass, FalseClass]
          def applies_to?(date, type)
            date.year == 2014 && type == 'CDAC'
          end

        end
      end
    end
  end
end