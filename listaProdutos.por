programa
{
	
	funcao inicio(){
		inteiro opcao =0, numero = 0
		
		escreva("=============== PRODUTOS ===============\n")
		para (inteiro posicao = 0; posicao < 9; posicao++)
		{
			numero = numero + 1
			escreva (numero, " - ", produtos[posicao], 
				    "\nDescrição: ", descricoes[posicao], 
				    "\nQuantidade em estoque: ", qtdes[posicao], 
				    "\nPor apenas: R$", precos[posicao], "\n\n")
		}
		escreva("Digite uma opção, caso queira sair digite 0: ")
		leia(opcao)
		limpa()

		escolha(opcao){
			caso 1:
				escreva("Você selecionou ", produtos[0],"\n" )
				continua()
			pare
			caso 2:
				escreva("Você selecionou ", produtos[1],"\n" )
				continua()
			pare
			caso 3:
				escreva("Você selecionou ", produtos[2],"\n" )
				continua()
			pare
			caso 4:
				escreva("Você selecionou ", produtos[3],"\n" )
				continua()
			pare
			caso 5:
				escreva("Você selecionou ", produtos[4],"\n" )
				continua()
			pare
			caso 6:
				escreva("Você selecionou ", produtos[5],"\n" )
				continua()
			pare
			caso 7:
				escreva("Você selecionou ", produtos[6],"\n" )
				continua()
			pare
			caso 8:
				escreva("Você selecionou ", produtos[7],"\n" )
				continua()
			pare
			caso 9:
				escreva("Você selecionou ", produtos[8],"\n" )
				continua()
			pare
			caso 0:
				limpa()
				produtosCategoria()
			pare
			caso contrario:
				escreva("Por favor selecione uma opção valida!")
			pare
	}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1413; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */