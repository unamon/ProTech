programa
{
	
	funcao inicio()
	{
		menuFinal()
	}

	funcao menuFinal(){
		caracter resp, s, n
		real precoPedido= 14.50
		
		escreva("Deseja finalir o pedido?s/n  ")
		leia(resp)
		limpa()

		escolha (resp) {
			caso 's': 
				escreva("O preço total foi: R$", precoPedido, "\n",
					   "Volte sempre!\n")
			pare
			caso 'n':
				inicio()
			pare	
			caso contrario	:
				escreva("Opção inválida :(\n")
				inicio() //volta no menu anterior
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 56; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */