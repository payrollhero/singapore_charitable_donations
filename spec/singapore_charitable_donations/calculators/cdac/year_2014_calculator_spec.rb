require 'spec_helper'

describe SingaporeCharitableDonations::Calculators::CDAC::Year2014Calculator do

  subject(:result) { described_class.calculate(total_wages) }

  describe '#calculate' do

    context 'when the total wage is less than $2,000.00' do
      let(:total_wages) { 1_000 }
      let(:expected_contribution) { 0.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $2,000.00' do
      let(:total_wages) { 2_000 }
      let(:expected_contribution) { 1.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $2,000.00' do
      let(:total_wages) { 3_000 }
      let(:expected_contribution) { 1.00 }
      it { expect(result).to eq(expected_contribution) }
    end

  end
end