programa
{
		cadeia produtos[9] = {"Computador", "Notebook", "Impressora", "Celular", "Tablet", "Power Bank", "Xbox", "Ps4", "Nitendo"}
		cadeia descricoes[9] = {"Core i7 16GB RAM DDR4, SSD 240GB", "Core i5 8GB RAM DDR3, SSD 240GB", "Multifuncional HP DeskJet Ink Advantage 2774 com Wi-Fi",
		"Samsung Galaxy A03 Core 32GB Preto 4G", "Galaxy Tab A7 Lite 4G 32GB 3G RAM Tela imersiva", "Carregador Portátil Power Bank Redmi 10000mAh", "Fat 500gb Completo",
		"Sony Playstation 4 500Gb Standard Cor Preto Onyx Refurb", "32GB Azul E Vermelho Joy Con"}
		inteiro qtdes[9] = {10, 20, 30, 10, 10, 20, 5, 15, 25}
		real precos[9] = {3300.0, 2500.0, 500.0, 1300.0, 2000.0, 300.0, 2300.0, 1900.0, 2900.0}
	
	funcao inicio()
	{
		produtosCategoria()
	}

	funcao produtosCategoria() {

		inteiro opcao
		
		escreva("===== Categoria de Produtos =====\n\n")
		escreva("1) Escritório\n")
		escreva("2) Portáteis\n")
		escreva("3) Consoles\n")
		escreva("4) Sair.....\n")
		escreva("\nEscolha sua opção\n\n")
		leia(opcao)
		
		escolha (opcao) {
			caso 1:
				catProdutosEscritorio()
				pare

			caso 2:
				catProdutosPortateis()
				pare

			caso 3:
				catProdutosConsoles()
				pare

			caso 4:
				inicio()
				pare

			caso contrario:
				escreva("Opção inválida!")
				
		}
		
		
		}

	funcao catProdutosEscritorio() {
		limpa()
		escreva("===== Escritório =====\n\n")
		para (inteiro posicao = 0; posicao < 3; posicao++)
		{
			escreva (posicao + 1, " - ", produtos[posicao], " ", descricoes[posicao], " ", qtdes[posicao], " R$ ", precos[posicao], "\n\n")

		}
	}

	funcao catProdutosPortateis() {
		limpa()
		escreva("===== Portatéis =====\n\n")
		para (inteiro posicao = 3; posicao < 6; posicao++)
		{
			escreva (posicao + 1, " - ", produtos[posicao], " ", descricoes[posicao], " ", qtdes[posicao], " R$ ", precos[posicao], "\n\n")

		}
	}

	funcao catProdutosConsoles() {
		limpa()
		escreva("===== Consoles =====\n\n")
		para (inteiro posicao = 6; posicao < 9; posicao++)
		{
			escreva (posicao + 1, " - ", produtos[posicao], " ", descricoes[posicao], " ", qtdes[posicao], " R$ ", precos[posicao], "\n\n")

		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2083; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */