programa
{
	inclua biblioteca Matematica--> mat
	
	funcao inicio()
	{
		menuFinal()
	}
		
	funcao menuFinal(){
		
		caracter resp, s, n
		cadeia nome = "Matheus"
		real precoPedidos= 14.99 + 189.99 , arredondado
		inteiro p = 2 // numero de pedidos
		
		escreva("Deseja finalir o pedido?s/n  ")
		leia(resp)
		limpa()

		escolha ( resp) {
			caso 's': 
				arredondado = mat.arredondar(precoPedidos, 2)
				escreva("Você comprou ", p," prudutos.\n",           //
					   "O preço total foi: R$", arredondado, "\n",
					   "Volte sempre!\n", nome) 					   
			pare
			caso 'n':
				inicio() // voltar para fazer mais compras (talvez produtos)			
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
 * @POSICAO-CURSOR = 51; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */