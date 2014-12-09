require 'spec_helper'

describe SingaporeCharitableDonations::Calculators::MBMF::Year2009Calculator do

  subject(:result) { described_class.calculate(total_wages) }

  describe '#calculate' do

    context 'when the total wage is less than $200.00' do
      let(:total_wages) { 199.00 }
      let(:expected_contribution) { 0.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $200.00' do
      let(:total_wages) { 200.00 }
      let(:expected_contribution) { 0.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $200.00' do
      let(:total_wages) { 201.00 }
      let(:expected_contribution) { 2.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is less than $1,001.00' do
      let(:total_wages) { 1_000.00 }
      let(:expected_contribution) { 2.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal than $1,001.00' do
      let(:total_wages) { 1_001.00 }
      let(:expected_contribution) { 3.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $1,001.00 but less than $2,001.00' do
      let(:total_wages) { 2_000.00 }
      let(:expected_contribution) { 3.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $2,001.00' do
      let(:total_wages) { 2_001.00 }
      let(:expected_contribution) { 5.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $2,001.00 but less than $3,001.00' do
      let(:total_wages) { 3_000.00 }
      let(:expected_contribution) { 5.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $3,001.00' do
      let(:total_wages) { 3_001.00 }
      let(:expected_contribution) { 12.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $3,001.00 but less than $4,001.00' do
      let(:total_wages) { 3_002.00 }
      let(:expected_contribution) { 12.50 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is equal to $4,001.00' do
      let(:total_wages) { 4_001.00 }
      let(:expected_contribution) { 16.00 }
      it { expect(result).to eq(expected_contribution) }
    end

    context 'when the total wage is greater than $4,001.00' do
      let(:total_wages) { 4_002.00 }
      let(:expected_contribution) { 16.00 }
      it { expect(result).to eq(expected_contribution) }
    end

  end
end
