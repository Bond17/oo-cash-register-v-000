
class CashRegister
attr_accessor :total,:discount,:last_transaction, :items

def initialize(discount= 0)
@total = 0
@discount = discount
@items = []
end

def add_item(title,price,quantity=1)
if quantity !=0
  self.items << title
end
self.total += price*quantity
end

def apply_discount
if discount == 0
  return "There is no discount to apply."
else
  self.total = self.total-self.discount
  return "After the discount, the total comes to $#{self.total}."
end
end

def items
@items.uniq
end

def void_last_transaction

end

end
