Quando('eu realizo o login') do
    buy_product.load
    buy_product.fill_login_data
    sleep(2)
end

Entao('eu verifico se o login foi realizado com sucesso') do
    expect(page).to have_current_path('https://www.saucedemo.com/inventory.html')
    sleep(2)
end
  
Quando('eu ordeno a listagem de produtos pelo valor low to high') do
    select_product.sort_products
    sleep(2)
end

Entao('verifico se a ordenação esta correta') do
    @order = find('option[value="lohi"]').select_option
    expect(@order.text).to eql 'Price (low to high)'
    puts @order
end  

Entao('eu adiciono itens ao carrinho') do
    select_product.add_to_cart
    sleep(2)
end

Entao('clico para acessar o carrinho') do
    access_cart.access_cart
    sleep(2)
end
  
Entao('verifico se os itens foram corretamente adicionados') do
    @first_item = find(class: 'inventory_item_name', text: 'Sauce Labs Onesie', exact_text: true)
    @second_item = find(class: 'inventory_item_name', text: 'Test.allTheThings() T-Shirt (Red)', exact_text: true)
    expect(@first_item.text).to eql 'Sauce Labs Onesie'
    expect(@second_item.text).to eql 'Test.allTheThings() T-Shirt (Red)'
    access_cart.checkout_cart
end

Entao('finalizo minha compra') do
    finish_buy.finish_buy
end
  
Entao('verifico se a compra foi finalizada com sucesso') do
    @text = find(class: 'complete-header')
    expect(@text.text).to eql 'THANK YOU FOR YOUR ORDER'
    sleep(2)
end

  