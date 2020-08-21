class ProdutoDescricao
  include Capybara::DSL

  def valor_produto
    page.find(".partners-tab__content-price-real .container-price-points").text
  end

  def adicionar_carrinho
    find("#cc-prodDetails-addToCart").click
    sleep 8
  end
end
