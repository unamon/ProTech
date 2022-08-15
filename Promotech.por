programa
{	
	funcao logico login(){
		cadeia usuario, senha
		
		escreva("-----LOGIN-----")
		escreva("\nUsuário: ")
		leia(usuario)
		escreva("\nSenha: ")
		leia(senha)
		
		se (usuario == "Unamon" e senha == "arreua"){
			retorne verdadeiro
		} senao se (usuario == "AquinoMatheus16" e senha == "123"){
			retorne verdadeiro
		} senao se (usuario == "Christianbn" e senha == "159"){
			retorne verdadeiro 
		} senao se (usuario == "JoaoPedroMS01" e senha == "021"){
			retorne verdadeiro
		} senao se (usuario == "AndersonLPS" e senha == "996"){
			retorne verdadeiro
		} senao {
			limpa()
			escreva("Login Incorreto\n")
			login()
			retorne verdadeiro
		}
	}
	
	funcao inicio()
	{	
		escreva(login())
		
	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */