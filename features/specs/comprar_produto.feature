#language: pt

Funcionalidade: Realizar login, ordernar produtos e realizar compra

-Eu como um usuario
-Desejo me logar no site com sucesso
-Ordenar os valores dos produtos low to high 
-Selecionar os produtos desejados
-Acessar o carrinho
-Conferir minha compra
-Finalizar minha compra


@comprar_produto
Cenário: Comprar produto com sucesso
Quando eu realizo o login
Entao eu verifico se o login foi realizado com sucesso

Entao eu ordeno a listagem de produtos pelo valor low to high
E verifico se a ordenação esta correta

Entao eu adiciono itens ao carrinho
Entao clico para acessar o carrinho
E verifico se os itens foram corretamente adicionados
E finalizo minha compra
E verifico se a compra foi finalizada com sucesso
