class Order

  attr_reader :dishes

  def initialize(menu)
    @dishes = {}
    @menu = menu
  end

  def add(dish, quantity)
    fail NoDishError, "#{dish.capitalize} is not on the menu!" unless menu.has_dish?(dish)

    dishes[dish] = quantity
  end

  private

  attr_reader :menu

end

class NoDishError < StandardError
  def initialize(msg = "Cannot add dish, item not on menu!")
  end
end
