programa
{

	funcao inicio()
	{
		produtos()
		
	
	}
	funcao produtos() 
		{
			cadeia matrizProdutos[3][4] =  {{"\nESCRITÓRIO", "Computador", "Notebook", "Impressora"},
							     	 {"\nPORTATEIS", "Celular", "Tablet", "Powerbank"},
							     	 {"\nCONSOLES", "PS5", "Xbox", "Nintendo"}}
			
			para (inteiro i = 0; i < 3; i++){
				para (inteiro j = 0; j < 4; j++) 
					escreva("\n", matrizProdutos[i][j]) 
				
			}
			escreva("\n")
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 352; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizProdutos, 12, 10, 14}-{i, 16, 17, 1}-{j, 17, 18, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */