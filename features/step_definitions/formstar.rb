
Dado(/^que estou na home do site Walmart$/) do
visit 'https://www.walmart.com.br/'
end

Quando(/^digito a palavra Samsung na Busca do site e clico ENTER$/) do
fill_in('ft', :with => 'Samsung')
click_button('Procurar')
end

Então(/^será retornado uma lista com todos os aparelhos Samsung$/) do
find('#product-list')
assert_text('Resultados de busca para "Samsung"')
end


Dado(/^que realizei uma pesquisa para Samsung$/) do
visit 'https://www.walmart.com.br/'
fill_in('ft', :with => 'Samsung')
click_button('Procurar')
find('#product-list')
assert_text('Resultados de busca para "Samsung"')
end

Quando(/^clico no menu lateral Celulares e Smartphones e acesso a pagina$/) do
click_link('Celulares e Smartphones' ,match: :first)
end

Então(/^clico em algum Samsung galaxy S(\d+) Edge$/) do |arg1|
assert_text('SM-G935F')
end


Dado(/^que estou na tela de Samsung Celulares e Smartphones$/) do
visit 'https://www.walmart.com.br/'
fill_in('ft', :with => 'Samsung')
click_button('Procurar')
find('#product-list')
assert_text('Resultados de busca para "Samsung"')
click_link('Celulares e Smartphones' ,match: :first)
assert_text('SM-G935F')
end

Quando(/^seleciono algum checkbox dos menus Marca, Plataformas, Operadora, Memoria interna e Faixa de Preço$/) do
click_link('Samsung' ,match: :first)
click_link('Android' ,match: :first)
click_link('Desbloqueado' ,match: :first)
click_link('32 GB' ,match: :first)
click_link('Acima de R$1400' ,match: :first)
end

Então(/^a pagina deve apresentar no resultado da busca o modelo SM\-(\d+)F Azul$/) do |arg1|
assert_text('SM-G935F Azul')
end


Dado(/^que realizei a busca filtrando a busca$/) do
visit 'https://www.walmart.com.br/'
fill_in('ft', :with => 'Samsung')
click_button('Procurar')
find('#product-list')
assert_text('Resultados de busca para "Samsung"')
click_link('Celulares e Smartphones' ,match: :first)
assert_text('SM-G935F')
click_link('Samsung' ,match: :first)
click_link('Android' ,match: :first)
click_link('Desbloqueado' ,match: :first)
click_link('32 GB' ,match: :first)
click_link('Acima de R$1400' ,match: :first)
assert_text('SM-G935F Azul')
end

Quando(/^seleciono o celular adicionando o produto no carrinho$/) do
click_link('Smartphone Samsung Galaxy S7 Edge SM-G935F Azul Single Chip Android 6.0 4G Wi-Fi Câmera Dual Pixel de 12MP' ,match: :first)
click_button('Adicionar ao carrinho')
click_button('Continuar')
end

Então(/^na pagina do carrinho o item deverá ser apresentado$/) do
find('.topbar-buttons.open-link.cart-link').click

sleep 10
end