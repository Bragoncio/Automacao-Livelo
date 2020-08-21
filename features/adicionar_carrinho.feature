#language: pt

Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar uma compra
    Sendo um cliente que já decidiu o que deseja comprar
    Posso adicionar itens ao meu carrinho

@adicionar_carrinho
Cenario: Adicionar 1 produto

        Dado que o produto desejado é escolhido
        E o valor do produto é de "3.000 Pontos"
        Quando eu adiciono 1 produto
        Então deve ser adicionado 2 unidade(s) deste produto
        E o valor total deve ser de "9.000 Pontos"
        Então finalizo o pedido




       