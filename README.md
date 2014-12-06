# SingaporeCharitableDonations

[![Gem Version](https://badge.fury.io/rb/singapore_charitable_donations.svg)](http://badge.fury.io/rb/singapore_charitable_donations)
[![Code Climate](https://codeclimate.com/github/payrollhero/singapore_charitable_donations/badges/gpa.svg)](https://codeclimate.com/github/payrollhero/singapore_charitable_donations)
[![Test Coverage](https://codeclimate.com/github/payrollhero/singapore_charitable_donations/badges/coverage.svg)](https://codeclimate.com/github/payrollhero/singapore_charitable_donations)

[![Circle CI](https://circleci.com/gh/payrollhero/singapore_charitable_donations.png?style=badge)](https://circleci.com/gh/payrollhero/singapore_charitable_donations)

This gem is a calculator for charitable donations in Singapore.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'singapore_charitable_donations'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install singapore_charitable_donations

## Usage

Currently supported charitable donation types:
  * CDAC - Chinese Development Assistance Council Fund
  * ECF - Eurasian Community Fund
  * MBMF - Mosque Building and Mendaki Fund
  * SINDA - Singapore Indian Development Association Fund

```ruby
calculator = SingaporeCharitableDonations::Calculator.get(date: Date.new(2014, 12, 7), type: "CDAC")
cdac_amount = calculator.calculate(2_000.00)
cdac_amount #=> 1.00
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/singapore_charitable_donations/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
