class HomePage
  include Capybara::DSL

  def acessar_site
    visit "/"
  end

  def pesquisar_produto
    find("#input-search").set ("Brinquedo")
    find("#span-searchIcon").click
  end

  def selecionar_produto
    page.first("#wi6200019-endeca-product-listing-points-id .cc-product-item", text: "Mini Boneca Candide LOL Lil Sisters").click
  end
end
