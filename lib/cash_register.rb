
class CashRegister
attr_accessor :total,:discount
@@items = []

def initialize(discount= 0)
@total = 0
@discount = discount
end

def add_item(title,price,quantity=1)
@@items << title
self.total += price*quantity
end

def apply_discount
if discount == 0
  return "error no discount to apply"
else
  self.total = self.total*self.discount
end
end

def items
@@items.uniq
end

def void_last_transaction

end

end
