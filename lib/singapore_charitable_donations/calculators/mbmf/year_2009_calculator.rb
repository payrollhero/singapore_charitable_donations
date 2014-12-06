module SingaporeCharitableDonations
  module Calculators
    module MBMF

      # Mosque Building and Mendaki Fund contribution calculator for the year 2009 onwards.
      module Year2009Calculator
        class << self

          # @param [BigDecimal] total_wage
          # @return [BigDecimal] contribution amount
          def calculate(total_wages)
            rounded_total_wages = total_wages.round
            case
            when rounded_total_wages <= 200.00
              BigDecimal "0.00"
            when rounded_total_wages <= 1_000.00
              BigDecimal "2.00"
            when rounded_total_wages <= 2_000.00
              BigDecimal "3.50"
            when rounded_total_wages <= 3_000.00
              BigDecimal "5.00"
            when rounded_total_wages <= 4_000.00
              BigDecimal "12.50"
            else # total_wages > 4_000.00
              BigDecimal "16.00"
            end
          end

          # @param [Date] date to be considered for calculation
          # @param [String] type of charitable contribution
          # @return [TrueClass, FalseClass]
          def applies_to?(date, type)
            date.year >= 2009 && type == 'MBMF'
          end

        end
      end
    end
  end
end