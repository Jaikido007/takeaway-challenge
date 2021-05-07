require 'menu'

describe Menu do
# dependence injection. Inject dishes hash to menu.
  subject(:menu) { described_class.new(dishes) }

  let(:dishes) do
    {
      pizza: 9.99,
      pasta: 7.99,
    }
  end

  it 'has a list dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'prints a list of dishes with prices' do
    printed_menu = "Pizza £9.99, Pasta £7.99"
    expect(menu.print).to eq(printed_menu)
  end
end
