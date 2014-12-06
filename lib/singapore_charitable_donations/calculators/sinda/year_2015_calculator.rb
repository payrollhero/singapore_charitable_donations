module SingaporeCharitableDonations
  module Calculators
    module SINDA
      module Year2015Calculator

        class << self

          def calculate(total_wages)
            case
            when total_wages <= 1_000.00
              1.00
            when total_wages <= 1_500.00
              3.00
            when total_wages <= 2_500.00
              5.00
            when total_wages <= 4_500.00
              7.00
            when total_wages <= 7_500.00
              9.00
            when total_wages <= 10_000.00
              12.00
            when total_wages <= 15_000.00
              18.00
            else # total_wages > 15_000.00
              30.00
            end
          end

          def applies_to?(date, type)
            date.year >= 2015 && type == 'SINDA'
          end

        end

      end
    end
  end
end