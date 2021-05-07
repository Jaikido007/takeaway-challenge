require 'takeaway'

describe Takeaway do
# injected menu into takeaway class
  subject(:takeaway) { described_class.new(menu: menu) }
# menu double
  let(:menu) { double(:menu, print: printed_menu) }
  let(:printed_menu) { "Soy Burger: £2.50" }
# what menu will look like - Still to do: class Menu
  it 'shows menu dishes with prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end
end
