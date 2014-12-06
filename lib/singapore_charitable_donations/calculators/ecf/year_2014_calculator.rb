module SingaporeCharitableDonations
  module Calculators
    module ECF

      # Eurasian Community Fund contribution calculator for the year 2014.
      class Year2014Calculator
        class << self

          # @param [BigDecimal] total_wage
          # @return [BigDecimal] contribution amount
          def calculate(total_wages)
            case
            when total_wages <= 1_000.00
              BigDecimal "2.00"
            when total_wages <= 1_500.00
              BigDecimal "4.00"
            when total_wages <= 2_500.00
              BigDecimal "6.00"
            when total_wages <= 4_000.00
              BigDecimal "8.00"
            else # total_wages > 4_000.00
              BigDecimal "10.00"
            end
          end

          # @param [Date] date to be considered for calculation
          # @param [String] type of charitable contribution
          # @return [TrueClass, FalseClass]
          def applies_to?(date, type)
            date.year == 2014 && type == 'ECF'
          end

        end

      end
    end
  end
end