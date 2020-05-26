class Cart

    # def total_price(quantity, discount_coupon = nil)
    #     return if quantity <= 0

    #     if quantity >= 10 || discount_coupon == 'OBADESCONTO'
    #         return quantity * 15
    #     else
    #         return quantity * 20
    #     end
    # end

    def total_price(quantity, discount_coupon = nil)
        return if quantity <= 0
    
        if quantity >= 10 || discount_coupon.eql?('OBADESCONTO')
            total_price = quantity * 15
        else
            total_price = quantity * 20
        end
        total_price
    end

end
