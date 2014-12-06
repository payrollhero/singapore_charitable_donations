require 'spec_helper'

describe SingaporeCharitableDonations::Calculators::SINDA::Year2015Calculator do

  subject(:result) { described_class.calculate(total_wages) }

  describe '#calculate' do

    context 'when the total wage is less than $1,000.00' do
      let(:total_wages) { 999.99 }
      let(:expected_contribution) { 1.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $1,000.00' do
      let(:total_wages) { 1_000.00 }
      let(:expected_contribution) { 1.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $1,000.00 but less than $1,500.00' do
      let(:total_wages) { 1_000.01 }
      let(:expected_contribution) { 3.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $1,500.00' do
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

    context 'when the total wage is greater than $2,500.00 but less than $4,500.00' do
      let(:total_wages) { 2_500.01 }
      let(:expected_contribution) { 7.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $4,500.00' do
      let(:total_wages) { 4_500.00 }
      let(:expected_contribution) { 7.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $4,500.00 but less than $7,500.00' do
      let(:total_wages) { 4_500.01 }
      let(:expected_contribution) { 9.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage equal to $7,500.00' do
      let(:total_wages) { 7_500.00 }
      let(:expected_contribution) { 9.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $7,500.00 but less than $10,000.00' do
      let(:total_wages) { 7_500.01 }
      let(:expected_contribution) { 12.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage equal to $10,000.00' do
      let(:total_wages) { 10_000.00 }
      let(:expected_contribution) { 12.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $10,000.00 but less than $15,000.00' do
      let(:total_wages) { 10_000.01 }
      let(:expected_contribution) { 18.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage equal to $15,000.00' do
      let(:total_wages) { 15_000.00 }
      let(:expected_contribution) { 18.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $15,000.00' do
      let(:total_wages) { 15_000.01 }
      let(:expected_contribution) { 30.00 }
      it { expect(result).to eq(expected_contribution) }
    end

  end
end