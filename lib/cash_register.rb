

class CashRegister
    attr_accessor :discount, :total

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end
    
    def add_item(title, price, quantity=1)
        @title = title
        @price = price
        @quantity = quantity
        
        @quantity.times do 
            @items << @title
        end

        @total += @price * @quantity
    end

    def apply_discount
        if @discount != 0
            @total = @total.to_f * (100.0 - @discount.to_f) / 100
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end
    
    def  void_last_transaction
        @total -= @price * @quantity
    end
end

