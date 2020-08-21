class CarrinhoCompra
  include Capybara::DSL

  def adicionar_quantidade
    produto = "Mini Boneca Candide LOL Lil Sisters"
    find(:xpath, "(//a[text()='#{produto}']/../..//span)[7]").click
  end

  def subtotal
    find("#cc-cart-total").text
  end

  def finalizar_pedido
    find("#ctaCheckout").click
  end
end
