class Items
  attr_accessor :product, :price
    def add_basket (product,price)
      # basket.push({product,price})
      total_price=[]
      total_price.push(price)
      @sum_price=total_price.inject(0, :+)
    end
end
