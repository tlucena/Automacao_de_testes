#language: pt
#utf-8

Funcionalidade: Buscar produto
Eu como usuário do site Walmart
Quero realizar uma busca de celular
Para verificar a lista da busca realizada

Cenário: Opção de busca pelo site
	Dado que estou na home do site Walmart
	Quando digito a palavra Samsung na Busca do site e clico ENTER
	Então será retornado uma lista com todos os aparelhos Samsung

Cenário: Selecionar SAmsung galaxy S7 Edge
	Dado que realizei uma pesquisa para Samsung
	Quando clico no menu lateral Celulares e Smartphones e acesso a pagina
	Então clico em algum Samsung galaxy S7 Edge

Cenário: Selecionar Refinar busca
	Dado que estou na tela de Samsung Celulares e Smartphones
	Quando seleciono algum checkbox dos menus Marca, Plataformas, Operadora, Memoria interna e Faixa de Preço
	Então a pagina deve apresentar no resultado da busca o modelo SM-935F Azul

Cenário: Inserir o celular no carrinho
	Dado que realizei a busca filtrando a busca
	Quando seleciono o celular adicionando o produto no carrinho
	Então na pagina do carrinho o item deverá ser apresentado