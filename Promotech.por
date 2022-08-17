programa
{	
	inclua biblioteca Util --> u

	cadeia usuarios[] = {"unamon","AquinoMatheus16","Christianbn","JoaoPedroMS01","AndersonLPS"}
	cadeia senhas[] = {"502", "123", "159", "021", "996"}

	cadeia usuario, senha 
	/*funcao logico login(){
		
		
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
	*/
	funcao login(){
        inteiro quantErros = 0
        logico valida = falso
        escreva("======LOGIN======")
        escreva("Insira seu usuario: ")
        leia(usuario)
        escreva("Insira sua senha: ")
        leia(senha)
        limpa()

        para(inteiro i=0; i< u.numero_elementos(usuarios); i++){
            se(usuario == usuarios[i] e senha == senhas[i]){
                valida = verdadeiro
            }
        }

        se(valida == verdadeiro){
            escreva("Olá, ", usuario, " o que deseja fazer?\n" )
            menu_principal()    
        }senao{
            quantErros = quantErros + 1
            menuRetorno(quantErros)
        }
    }
	
	funcao inicio()
	{	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1105; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */