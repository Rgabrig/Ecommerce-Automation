class ComprarProduto < SitePrism::Page
    set_url 'https://www.saucedemo.com/'
    element :username, '#user-name'
    element :password, '#password'
    element :botao_logar, '[id="login-button"]'

    def preencher_dados_login
        username.set 'standard_user'
        password.set 'secret_sauce'
        botao_logar.click
    end
end

class SelecionarProduto < SitePrism::Page
    set_url '/inventory.html'
    element :botao_adicionar_carrinho_sauce, '[id="add-to-cart-sauce-labs-onesie"]'
    element :botao_adicionar_carrinho_test, '[id="add-to-cart-test.allthethings()-t-shirt-(red)"]'
    
    def ordenar_produtos
        find('option[value="lohi"]').select_option
    end

    def adicionar_carrinho
        botao_adicionar_carrinho_sauce.click
        botao_adicionar_carrinho_test.click
    end
end

class AcessarCarrinho < SitePrism::Page
    set_url '/cart.html'
    element :botao_abrir_carrinho, ('a[class=shopping_cart_link]')
    element :checkout, '[id="checkout"]'

    def acessar_carrinho
        botao_abrir_carrinho.click
    end

    def checkout_carrinho
        checkout.click
    end
end

class FinalizarCompra < SitePrism::Page
    set_url '/checkout-step-one.html'
    element :first_name, '[id="first-name"]'
    element :last_name, '[id="last-name"]'
    element :postal_code, '[id="postal-code"]'
    element :postal_code, '[id="postal-code"]'
    element :botao_confirmar_dados, '[id="continue"]'
    element :botao_finalizar_compra, '[id="finish"]'
    
    def finalizar_compra
        first_name.set 'Raphael'
        last_name.set 'Gabrig'
        postal_code.set '28623340'
        sleep(2)
        botao_confirmar_dados.click
        botao_finalizar_compra.click
    end
end
