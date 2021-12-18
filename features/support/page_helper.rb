#Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}


module Pages
    def comprar_produto
        @comprar_produto ||= ComprarProduto.new
    end

    def selecionar_produto
        @selecionar_produto ||= SelecionarProduto.new
    end

    def acessar_carrinho
        @acessar_carrinho ||= AcessarCarrinho.new
    end

    def finalizar_compra
        @finalizar_compra ||= FinalizarCompra.new
    end
end