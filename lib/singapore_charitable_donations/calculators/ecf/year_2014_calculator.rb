module SingaporeCharitableDonations
  module Calculators
    module ECF
      class Year2014Calculator

        class << self

          def calculate(total_wages)
            case
            when total_wages <= 1_000.00
              2.00
            when total_wages <= 1_500.00
              4.00
            when total_wages <= 2_500.00
              6.00
            when total_wages <= 4_000.00
              8.00
            else # total_wages > 4_000.00
              10.00
            end
          end

          def applies_to?(date, type)
            date.year == 2014 && type == 'ECF'
          end

        end

      end
    end
  end
end