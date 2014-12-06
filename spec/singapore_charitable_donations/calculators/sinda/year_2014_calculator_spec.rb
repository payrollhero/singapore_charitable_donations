require 'spec_helper'

describe SingaporeCharitableDonations::Calculators::SINDA::Year2014Calculator do

  subject(:result) { described_class.calculate(total_wages) }

  describe '#calculate' do

    context 'when the total wage is less than $600.00' do
      let(:total_wages) { 599.99 }
      let(:expected_contribution) { 1.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal $600.00' do
      let(:total_wages) { 600.00 }
      let(:expected_contribution) { 1.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $600.00 but less than $1,500.00' do
      let(:total_wages) { 600.01 }
      let(:expected_contribution) { 3.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal $1,500.00' do
      let(:total_wages) { 1_500.00 }
      let(:expected_contribution) { 3.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $1,500.00 but less than $2,500.00' do
      let(:total_wages) { 1_500.01 }
      let(:expected_contribution) { 5.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $2,500.00' do
      let(:total_wages) { 2_500.00 }
      let(:expected_contribution) { 5.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $2,500.00' do
      let(:total_wages) { 2_500.01 }
      let(:expected_contribution) { 7.00 }
      it { expect(result).to eq(expected_contribution) }
    end

  end
end