module SingaporeCharitableDonations
  module Calculators
    module SINDA
      module Year2014Calculator

        class << self

          def calculate(total_wages)
            case
            when total_wages <= 600.00
              1.00
            when total_wages <= 1_500.00
              3.00
            when total_wages <= 2_500.00
              5.00
            else # > 2_500.00
              7.00
            end
          end

          def applies_to?(date, type)
            date.year == 2014 && type == 'SINDA'
          end

        end

      end
    end
  end
end