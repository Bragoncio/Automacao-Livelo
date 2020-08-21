require "report_builder"
require "date"

Before do
  @home_page = HomePage.new
  @produto_page = ProdutoDescricao.new
  @carrinho_page = CarrinhoCompra.new
  page.current_window.resize_to(1440, 900)
end

After do |scenario|
  if scenario.failed?
    temp_shot = page.save_screenshot("log/temp_livelo.png")
    screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
    embed(screenshot, "image/png", "Screenshot")
  end
end

d = DateTime.now
@current_date = d.to_s.tr(":", "-")

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/" + @current_date
    config.report_types = [:html]
    config.report_title = "Livelo - Compasso UOL"
    config.compress_image = true
    config.additional_info = { "App" => "Web", "Data de execução" => @current_date }
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
