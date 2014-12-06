require 'spec_helper'

describe SingaporeCharitableDonations::Calculators::CDAC::Year2015Calculator do

  subject(:result) { described_class.calculate(total_wages) }

  describe '#calculate' do

    context 'when the total wage is less than $2,000.00' do
      let(:total_wages) { 1_000.00 }
      let(:expected_contribution) { 0.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal $2,000.00' do
      let(:total_wages) { 2_000.00 }
      let(:expected_contribution) { 0.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $2,000.00 but less than $3,500.00' do
      let(:total_wages) { 2_000.01 }
      let(:expected_contribution) { 1.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $3,500.00' do
      let(:total_wages) { 3_500.00 }
      let(:expected_contribution) { 1.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $3,500.00 but less than $5,000.00' do
      let(:total_wages) { 3_500.01 }
      let(:expected_contribution) { 1.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $5,000.00' do
      let(:total_wages) { 5_000.00 }
      let(:expected_contribution) { 1.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $5,000.00 but less than $7,500.00' do
      let(:total_wages) { 5_000.01 }
      let(:expected_contribution) { 2.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $7,500.00' do
      let(:total_wages) { 7_500.00 }
      let(:expected_contribution) { 2.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $7,500.00' do
      let(:total_wages) { 8_500.01 }
      let(:expected_contribution) { 3.00 }
      it { expect(result).to eq(expected_contribution) }
    end

  end
end