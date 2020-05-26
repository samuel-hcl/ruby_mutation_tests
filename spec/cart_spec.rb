require 'simplecov'
SimpleCov.start

require_relative '../app/cart.rb'

describe Cart do
    it { expect(Cart.new.total_price(9)).to eq 180 }
    it { expect(Cart.new.total_price(10)).to eq 150 }
    it { expect(Cart.new.total_price(11)).to eq 165 }
    it { expect(Cart.new.total_price(-1)).to be_nil }
    it { expect(Cart.new.total_price(0)).to be_nil }
    it { expect(Cart.new.total_price(1, 'invalido')).to eq 20 }
    it { expect(Cart.new.total_price(1, nil)).to eq 20 }
    it { expect(Cart.new.total_price(5)).to eq 100 }
    it { expect(Cart.new.total_price(1, 'OBADESCONTO')).to eq 15 }
end

# run mutation
# bundle exec mutant --use rspec --include 'app' --require 'cart.rb' -- Cart*
