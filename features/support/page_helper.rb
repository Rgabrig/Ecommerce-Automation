module Pages
    def buy_product
        @buy_product ||= BuyProduct.new
    end

    def select_product
        @select_product ||= SelectProduct.new
    end

    def access_cart
        @access_cart ||= AccessCart.new
    end

    def finish_buy
        @finish_buy ||= FinishBuy.new
    end
end