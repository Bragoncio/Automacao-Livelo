Dado("que o produto desejado é escolhido") do
  @home_page.acessar_site
  @home_page.pesquisar_produto
  @home_page.selecionar_produto
  sleep 5
end

Dado("o valor do produto é de {string}") do |preco_produto|
  expect(@produto_page.valor_produto).to eql preco_produto
end

Quando("eu adiciono {int} produto") do |int|
  @produto_page.adicionar_carrinho
end

Então('deve ser adicionado {int} unidade\(s) deste produto') do |quantidade|
  quantidade.times do
    @carrinho_page.adicionar_quantidade
    sleep 6
  end
end

Então("o valor total deve ser de {string}") do |subtotal|
  expect(@carrinho_page.subtotal).to eql subtotal
end

Então("finalizo o pedido") do
  @carrinho_page.finalizar_pedido
  sleep 5
end
