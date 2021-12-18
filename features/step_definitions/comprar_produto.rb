Quando('eu realizo o login') do
    comprar_produto.load
    comprar_produto.preencher_dados_login
    sleep(2)
end

Entao('eu verifico se o login foi realizado com sucesso') do
    expect(page). to have_current_path('https://www.saucedemo.com/inventory.html')
    sleep(2)
end
  
Quando('eu ordeno a listagem de produtos pelo valor low to high') do
    selecionar_produto.ordenar_produtos
    sleep(2)
end

Entao('verifico se a ordenação esta correta') do
    @ordenacao = find('option[value="lohi"]').select_option
    expect(@ordenacao.text).to eql 'Price (low to high)'
    puts @ordenacao
end  

Entao('eu adiciono itens ao carrinho') do
    selecionar_produto.adicionar_carrinho
    sleep(2)
end

Entao('clico para acessar o carrinho') do
    acessar_carrinho.acessar_carrinho
    sleep(2)
end
  
Entao('verifico se os itens foram corretamente adicionados') do
    @primeiro_item = find(class: 'inventory_item_name', text: 'Sauce Labs Onesie', exact_text: true)
    @segundo_item = find(class: 'inventory_item_name', text: 'Test.allTheThings() T-Shirt (Red)', exact_text: true)
    expect(@primeiro_item.text).to eql 'Sauce Labs Onesie'
    expect(@segundo_item.text).to eql 'Test.allTheThings() T-Shirt (Red)'
    acessar_carrinho.checkout_carrinho
end

Entao('finalizo minha compra') do
    finalizar_compra.finalizar_compra
end
  
Entao('verifico se a compra foi finalizada com sucesso') do
    @texto = find(class: 'complete-header')
    expect(@texto.text).to eql 'THANK YOU FOR YOUR ORDER'
    sleep(2)
end

  