class Menu
attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end
# setting float to 2.decimal places (Synytax from 'O'Riley - Head First Ruby' book)
  def print
    dishes.map do |title, price|
      "%s £%.2f" % [title.to_s.capitalize, price]
    end.join(", ")
  end

end
