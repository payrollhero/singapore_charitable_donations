require 'spec_helper'

describe SingaporeCharitableDonations::Calculators do

  subject(:calculator) { described_class.get(date: date, type: type) }

  describe '#get' do

    context 'when type is CDAC' do
      let(:type) { 'CDAC' }

      context 'when the year is 2014' do
        let(:date) { Date.new(2014,1,1) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::CDAC::Year2014Calculator }

        it { expect(calculator).to eq expected_calculator }
      end

      context 'when the year is 2015' do
        let(:date) { Date.new(2015,1,1) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::CDAC::Year2015Calculator }

        it { expect(calculator).to eq expected_calculator }
      end

      context 'when the year is 2016' do
        let(:date) { Date.new(2016,12,5) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::CDAC::Year2015Calculator }

        it { expect(calculator).to eq expected_calculator }
      end
    end

    context 'when type is ECF' do
      let(:type) { 'ECF' }

      context 'when the year is 2014' do
        let(:date) { Date.new(2014,1,1) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::ECF::Year2014Calculator }

        it { expect(calculator).to eq expected_calculator }
      end

      context 'when year is 2015' do
        let(:date) { Date.new(2015,1,1) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::ECF::Year2015Calculator }

        it { expect(calculator).to eq expected_calculator }
      end

      context 'when the year is 2016' do
        let(:date) { Date.new(2016,12,5) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::ECF::Year2015Calculator }

        it { expect(calculator).to eq expected_calculator }
      end
    end

    context 'when type is MBMF' do
      let(:type) { 'MBMF' }
      let(:date) { Date.new(2014,1,1) }
      let(:expected_calculator) { SingaporeCharitableDonations::Calculators::MBMF::Year2009Calculator }

      it { expect(calculator).to eq expected_calculator }
    end

    context 'when type is SINDA' do
      let(:type) { 'SINDA' }

      context 'when the year is 2014' do
        let(:date) { Date.new(2014,1,1) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::SINDA::Year2014Calculator }

        it { expect(calculator).to eq expected_calculator }
      end

      context 'when year is 2015' do
        let(:date) { Date.new(2015,1,1) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::SINDA::Year2015Calculator }

        it { expect(calculator).to eq expected_calculator }
      end

      context 'when the year is 2016' do
        let(:date) { Date.new(2016,12,5) }
        let(:expected_calculator) { SingaporeCharitableDonations::Calculators::SINDA::Year2015Calculator }

        it { expect(calculator).to eq expected_calculator }
      end
    end


  end
end