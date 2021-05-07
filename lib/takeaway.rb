require_relative './order.rb'

class Takeaway

  def initialize(menu:, order: nil)
    @menu = menu
    @order = order || order.new
  end

  def print_menu
    menu.print
  end

  def place_order(dishes)
    dishes.each do |dish, quantity|
      order.add(dish, quantity)
    end
    order.total
  end

  private

  attr_reader :menu, :order

end
