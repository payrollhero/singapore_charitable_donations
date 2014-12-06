require 'spec_helper'

describe SingaporeCharitableDonations::Calculators::ECF::Year2014Calculator do

  subject(:result) { described_class.calculate(total_wages) }

  describe '#calculate' do

    context 'when the total wage is less than $1,000.00' do
      let(:total_wages) { 999.99 }
      let(:expected_contribution) { 2.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $1,000.00' do
      let(:total_wages) { 1_000.00 }
      let(:expected_contribution) { 2.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $1,000.00 but less than $1,500.00' do
      let(:total_wages) { 1_000.01 }
      let(:expected_contribution) { 4.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $1,500.00' do
      let(:total_wages) { 1_500.00 }
      let(:expected_contribution) { 4.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $1,500.00 but less than $2,500.00' do
      let(:total_wages) { 1_500.01 }
      let(:expected_contribution) { 6.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $2,500.00' do
      let(:total_wages) { 2_500.00 }
      let(:expected_contribution) { 6.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $2,500.00 but less than $4,000.00' do
      let(:total_wages) { 2_500.01 }
      let(:expected_contribution) { 8.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $4,000.00' do
      let(:total_wages) { 4_000.00 }
      let(:expected_contribution) { 8.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $4,000.00' do
      let(:total_wages) { 4_000.01 }
      let(:expected_contribution) { 10.00 }
      it { expect(result).to eq(expected_contribution) }
    end

  end
end