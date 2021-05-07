require 'takeaway'

describe Takeaway do
# also injected order into takeaway class
  subject(:takeaway) { described_class.new(menu: menu, order: order) }
# order double set up
  let(:menu) { double(:menu, print: printed_menu) }
  let(:order) { double(:order) }
  let(:printed_menu) { "Pasta: £7.99" }
# test dishes
  let(:dishes) { { lasagne: 2, ratatouille: 1 } }

  it 'shows menu dishes with prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end
# using .twice for the first time. Source: Rspec mocks
  it 'can order some number of dishes' do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end
end
