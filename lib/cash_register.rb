
class CashRegister
attr_accessor :total,:discount,:last_transaction, :items

def initialize(discount= 0)
@total = 0
@discount = discount
@items = []
end

def add_item(title,price,quantity=1)
self.items << title
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
return self.items
end

def void_last_transaction

end

end
