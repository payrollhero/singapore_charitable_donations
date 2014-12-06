module SingaporeCharitableDonations
  module Calculators
    module CDAC
      module Year2015Calculator

        class << self

          def calculate(total_wage)
            case
            when total_wage <= 2_000
              0.50
            when total_wage <= 3_500
              1.00
            when total_wage <= 5_000
              1.50
            when total_wage <= 7_500
              2.00
            when total_wage > 7_500
              3.00
            end
          end

          def applies_to?(date, type)
            date.year >= 2015 && type == 'CDAC'
          end

        end
      end
    end
  end
end