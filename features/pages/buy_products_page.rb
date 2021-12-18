class BuyProduct < SitePrism::Page
    set_url 'https://www.saucedemo.com/'
    element :username, '#user-name'
    element :password, '#password'
    element :login_button, '[id="login-button"]'

    def fill_login_data
        username.set 'standard_user'
        password.set 'secret_sauce'
        login_button.click
    end
end

class SelectProduct < SitePrism::Page
    set_url '/inventory.html'
    element :button_add_to_cart_sauce, '[id="add-to-cart-sauce-labs-onesie"]'
    element :button_add_to_cart_test, '[id="add-to-cart-test.allthethings()-t-shirt-(red)"]'
    
    def sort_products
        find('option[value="lohi"]').select_option
    end

    def add_to_cart
        button_add_to_cart_sauce.click
        button_add_to_cart_test.click
    end
end

class AccessCart < SitePrism::Page
    set_url '/cart.html'
    element :button_open_cart, ('a[class=shopping_cart_link]')
    element :button_checkout, '[id="checkout"]'

    def access_cart
        button_open_cart.click
    end

    def checkout_cart
        button_checkout.click
    end
end

class FinishBuy < SitePrism::Page
    set_url '/checkout-step-one.html'
    element :first_name, '[id="first-name"]'
    element :last_name, '[id="last-name"]'
    element :postal_code, '[id="postal-code"]'
    #element :postal_code, '[id="postal-code"]'
    element :button_confirm_data, '[id="continue"]'
    element :button_finish_buy, '[id="finish"]'
    
    def finish_buy
        first_name.set 'Raphael'
        last_name.set 'Gabrig'
        postal_code.set '28623340'
        sleep(2)
        button_confirm_data.click
        button_finish_buy.click
    end
end
