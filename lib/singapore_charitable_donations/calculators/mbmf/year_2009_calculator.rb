module SingaporeCharitableDonations
  module Calculators
    module MBMF
      module Year2009Calculator
        class << self

          def calculate(total_wages)
            rounded_total_wages = total_wages.round
            case
            when rounded_total_wages <= 200.00
              0.00
            when rounded_total_wages <= 1_000.00
              2.00
            when rounded_total_wages <= 2_000.00
              3.50
            when rounded_total_wages <= 3_000.00
              5.00
            when rounded_total_wages <= 4_000.00
              12.50
            else # total_wages > 4_000.00
              16.00
            end
          end

          def applies_to?(date, type)
            date.year >= 2009 && type == 'MBMF'
          end

        end
      end
    end
  end
end