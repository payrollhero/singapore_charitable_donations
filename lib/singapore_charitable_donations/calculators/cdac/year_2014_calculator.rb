module SingaporeCharitableDonations
  module Calculators
    module CDAC
      module Year2014Calculator

        class << self

          def calculate(total_wage)
            case
            when total_wage < 2000
              0.50
            when total_wage >= 2000
              1.00
            end
          end

          def applies_to?(date, type)
            date.year == 2014 && type == 'CDAC'
          end

        end

      end
    end
  end
end