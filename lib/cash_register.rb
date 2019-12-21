require 'pry'
class CashRegister
  
  attr_accessor :total, :items, :last_transaction
  attr_reader :discount
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def total
    return @total
  end 

  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
    @last_transaction = price * quantity
    quantity.times do
    @items << title 
    end 
  end 
  
  def apply_discount
   if @discount > 0   
      @total = @total - @total * discount / 100.0
     "After the discount, the total comes to $#{total.to_i}."
    else
       "There is no discount to apply."
    end 
  end 
 
 
  def items
     @items
  end 
  
  def void_last_transaction
<<<<<<< HEAD
     @total -= @last_transaction
=======
       total -= add_item
>>>>>>> 9a47f5b32069e39ea1c8564c8d8f95a2ea438d7c
  
  end 
end 
