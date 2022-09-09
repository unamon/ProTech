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

	funcao produtosCategoria() {//Seleção de categorias

		inteiro opcao
		
		escreva("=============== MENU CATEGORIA ===============\n",
			   "Opção 1 - Escritório\n",
			   "Opção 2 - Portáteis\n",
			   "Opção 3 - Consoles\n",
			   "Opção 4 - Todos os produtos\n",
			   "Opção 0 - Voltar ao menu principal\n",
			   "=====================================================\n\n",
			   "Digite uma opção: ")
		leia(opcao)
		limpa()
		
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
				//listaProdutos()
			pare
			caso 0:
				//menuPrincipal()
			pare
			caso contrario:
				escreva("Por favor selecione uma opção valida!\n\n")
				produtosCategoria()
			pare
			}
		}

	funcao catProdutosEscritorio() {//Exibe os produtos da categoria "Escritorio"
		limpa()
		inteiro opcao =0, numero = 0
		
		escreva("=============== ESCRITÓRIO ===============\n")
		para (inteiro posicao = 0; posicao < 3; posicao++)
		{
			numero = numero + 1
			escreva (numero, " - ", produtos[posicao], 
				    "\nDescrição: ", descricoes[posicao], 
				    "\nQuantidade em estoque: ", qtdes[posicao], 
				    "\nPor apenas: R$", precos[posicao], "\n\n")
		}
		escreva("==========================================\n\n",
			   "Digite uma opção, caso queira sair digite 0: ")
		leia(opcao)
		limpa()

		escolha(opcao){
			caso 1:
				//imagem2()				
			pare
			caso 2:
				//imagem1()
				
			pare
			caso 3:
				//imagem3()
			pare
			caso 0:
				produtosCategoria()
			pare
			caso contrario:
				escreva("Por favor selecione uma opção valida!\n\n")
				catProdutosEscritorio()
			pare
		}
	}

	funcao catProdutosPortateis() {//Exibe os produtos da categoria "Portateis"
		limpa()
		inteiro opcao =0, numero = 0
		
		escreva("=============== PORTATÉIS ===============\n")
		
		para (inteiro posicao = 3; posicao < 6; posicao++)
		{
			numero = numero + 1
			escreva (numero, " - ", produtos[posicao], 
				    "\nDescrição: ", descricoes[posicao], 
				    "\nQuantidade em estoque: ", qtdes[posicao], 
				    "\nPor apenas: R$", precos[posicao], "\n\n")
		}
		escreva("==========================================\n\n",
			   "Digite uma opção, caso queira sair digite 0: ")
		leia(opcao)

		escolha(opcao){
			caso 1:
				//imagem4()
			pare
			caso 2:
				//imagem5()
			pare
			caso 3:
				//imagem6()
			pare
			caso 0:
				limpa()
				produtosCategoria()
			pare
			caso contrario:
				escreva("Por favor selecione uma opção valida!\n\n")
				catProdutosPortateis()
			pare
		}
	}

	funcao catProdutosConsoles() {//Exibe os produtos da categoria "Console"
		limpa()
		inteiro opcao =0, numero = 0
		
		escreva("=============== CONSOLES ===============\n")
		para (inteiro posicao = 6; posicao < 9; posicao++)
		{
			numero = numero + 1
			escreva (numero, " - ", produtos[posicao], 
				    "\nDescrição: ", descricoes[posicao], 
				    "\nQuantidade em estoque: ", qtdes[posicao], 
				    "\nPor apenas: R$", precos[posicao], "\n\n")
		}
		
		escreva("==========================================\n\n",
			   "Digite uma opção, caso queira sair digite 0: ")
		leia(opcao)

		escolha(opcao){
			caso 1:
				//imagem7()
			pare
			caso 2:
				//imagem8()
			pare
			caso 3:
				//imagem9()
			pare
			caso 0:
				limpa()
				produtosCategoria()
			pare
			caso contrario:
				escreva("Por favor selecione uma opção valida!\n\n")
				catProdutosConsoles()
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4031; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */