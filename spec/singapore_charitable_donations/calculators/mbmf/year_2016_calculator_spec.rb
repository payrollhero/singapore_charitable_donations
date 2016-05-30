require 'spec_helper'

describe SingaporeCharitableDonations::Calculators::MBMF::Year2016Calculator do

  subject(:klass) { described_class }

  describe 'applies_to?' do
    subject(:answer) { klass.applies_to?(date, "MBMF") }

    context "june 1st, 2016" do
      let(:date) { Date.new(2016, 6, 1) }
      it { is_expected.to be true }
    end

    context "May 22nd, 2016" do
      let(:date) { Date.new(2016, 5, 22) }
      it { is_expected.to be false }
    end
  end

  describe '#calculate' do

    def it_matches_the_context(example)
      total_wages = example.metadata[:total_wages]
      total_wages = [total_wages] unless total_wages.kind_of?(Array)
      total_wages.each do |total_wage|
        expect(described_class.calculate(total_wage)).to eq example.metadata[:expected_contribution]
      end
    end

    it 'less than 1000.00', total_wages: [900, 1000], expected_contribution: 3.00 do |example|
      it_matches_the_context(example)
    end

    it 'less than 2000.00', total_wages: [1900, 2000], expected_contribution: 4.50 do |example|
      it_matches_the_context(example)
    end

    it 'less than 3000.00', total_wages: [2900, 3000], expected_contribution: 6.50 do |example|
      it_matches_the_context(example)
    end

    it 'less than 4000.00', total_wages: [3900, 4000], expected_contribution: 15.00 do |example|
      it_matches_the_context(example)
    end

    it 'less than 6000.00', total_wages: [5900, 6000], expected_contribution: 19.50 do |example|
      it_matches_the_context(example)
    end

    it 'less than 8000.00', total_wages: [7900, 8000], expected_contribution: 22.00 do |example|
      it_matches_the_context(example)
    end

    it 'less than 1000.00', total_wages: [9900, 10000], expected_contribution: 24.00 do |example|
      it_matches_the_context(example)
    end

    it 'greater than 1000.00', total_wages: 11000, expected_contribution: 26.00 do |example|
      it_matches_the_context(example)
    end

  end
end
