programa{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	
	//Login
	inteiro quantErros = 0
	cadeia usuarios[] = {"unamon","AquinoMatheus16","Christianbn","JoaoPedroMS01","AndersonLPS"}
	cadeia senhas[] = {"502", "123", "159", "021", "996"}
	cadeia usuario, senha
	//Produtos
	cadeia produtos[9] = {"Computador", "Notebook", "Impressora", "Celular", "Tablet", "Power Bank", "Xbox", "Ps4", "Nintendo Switch"}
	cadeia descricoes[9] = {"Core i7 16GB RAM DDR4, SSD 240GB", "Core i5 8GB RAM DDR3, SSD 240GB",	"Multifuncional HP DeskJet Ink Advantage 2774 com Wi-Fi",
	"Samsung Galaxy A03 Core 32GB Preto 4G", "Galaxy Tab A7 Lite 4G 32GB 3G RAM Tela imersiva", "Carregador Portátil Power Bank Redmi 10000mAh",
	"Fat 500gb Completo","Sony Playstation 4 500Gb Standard Cor Preto Onyx Refurb", "32GB Azul E Vermelho Joy Con"}
	inteiro qtdes[9] = {10, 20, 30, 10, 10, 20, 5, 15, 25}
	real precos[9] = {3300.0, 2500.0, 500.0, 1300.0, 2000.0, 300.0, 2300.0, 1900.0, 2900.0}
	//Carrinho
	
	real precoPedido = 0.0
			
	funcao inicio(){
		caracter opcao
		
	//	faca{
		escreva("Deseja entrar na ProTech? \n1 - Sim \n2 - Não \n")
		leia(opcao)
		limpa()
			escolha(opcao){
				caso '1':
					escreva("Bem vindo à\n")
					logo()
					login()
				pare
				caso '2':
					limpa()
					inicio()
				pare
				caso contrario:
					escreva("Por favor insira uma opção válida!\n\n")
					inicio()
			}
		//}enquanto(opcao != '1')
	}
	
	funcao logo()
	{
		escreva("██████╗ ██████╗  █████╗ ████████╗███████╗ █████╗ ██╗  ██╗\n",
			   "██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗██║  ██║\n",
			   "██████╔╝██████╔╝██║  ██║   ██║   █████╗  ██║  ╚═╝███████║\n",
			   "██╔═══╝ ██╔══██╗██║  ██║   ██║   ██╔══╝  ██║  ██╗██╔══██║\n",
			   "██║     ██║  ██║╚█████╔╝   ██║   ███████╗╚█████╔╝██║  ██║\n",
			   "╚═╝     ╚═╝  ╚═╝ ╚════╝    ╚═╝   ╚══════╝ ╚════╝ ╚═╝  ╚═╝\n\n")
	}

	funcao login(){
        logico valida = falso
        escreva("=============== LOGIN ===============\n")
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
            menuPrincipal()    
        }senao{
            quantErros = quantErros + 1
            erroLogin(quantErros)
        }
    }
	
	funcao menuPrincipal(){
		inteiro opcao

		escreva("Olá, ", usuario, "! O que deseja fazer?\n\n" )
	//	faca{
			escreva("=============== MENU PRINCIPAL ===============\n",
				   "Opção 1: Acessar produtos por categoria.\n",
				   "Opção 2: Acessar lista de produtos completa.\n",
				   "Opção 3: Finalizar compra.\n",
				   "Opção 0: Sair\n",
				   "Digite uma opção: ")
			
			leia(opcao)
			limpa()
			
			escolha(opcao){
				caso 0:
					sair()
					login()
				pare
				caso 1:
					produtosCategoria()
				pare
				caso 2: 
					listaProdutos()
				pare
				caso 3:
					menuFinal()
				pare	
				caso contrario:
					escreva("Opção invalida!\n")
				pare
			}
		//}enquanto(opcao != 0)
		
	}

	funcao listaProdutos()
	{
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
		escreva("Digite um produto que deseja comprar, ou 0 para sair: ")
		leia(opcao)
		limpa()

		escolha(opcao){
			caso 1:
				seleciona(0)
			pare
			caso 2:
				seleciona(1)
			pare
			caso 3:
				seleciona(2)
			pare
			caso 4:
				seleciona(3)
			pare
			caso 5:
				seleciona(4)
			pare
			caso 6:
				seleciona(5)
			pare
			caso 7:
				seleciona(6)
			pare
			caso 8:
				seleciona(7)
			pare
			caso 9:
				seleciona(8)
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

	funcao produtosCategoria() {

		inteiro opcao
		
		escreva("=============== CATEGORIA DE PRODUTOS ===============\n",
			   "Opção 1: Escritório\n",
			   "Opção 2: Portáteis\n",
			   "Opção 3: Consoles\n",
			   "Opção 0: Voltar ao menu principal\n",
			   "Digite uma opção: ")
		leia(opcao)
		
		escolha (opcao) {
			caso 1:
				limpa()
				catProdutosEscritorio()
				pare

			caso 2:
				limpa()
				catProdutosPortateis()
				pare

			caso 3:
				limpa()
				catProdutosConsoles()
				pare

			caso 0:
				limpa()
				menuPrincipal()
				pare

			caso contrario:
				escreva("Opção inválida!")
				
			}
		}

	funcao catProdutosEscritorio() {
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
		escreva("Digite uma opção, caso queira sair digite 0: ")
		leia(opcao)
		limpa()

		escolha(opcao){
			caso 1:
				seleciona(0)
				
			pare
			caso 2:
				seleciona(1)
				
			pare
			caso 3:
				seleciona(2)
			pare
			caso 0:
				produtosCategoria()
			pare
			caso contrario:
				escreva("Por favor selecione uma opção valida!")
			pare
		}
	}

	funcao catProdutosPortateis() {
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
		escreva("Digite uma opção, caso queira sair digite 0: ")
		leia(opcao)

		escolha(opcao){
			caso 1:
				seleciona(3)
			pare
			caso 2:
				seleciona(4)
			pare
			caso 3:
				seleciona(5)
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

	funcao catProdutosConsoles() {
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
		
		escreva("Digite uma opção, caso queira sair digite 0: ")
		leia(opcao)

		escolha(opcao){
			caso 1:
				seleciona(6)
			pare
			caso 2:
				seleciona(7)
			pare
			caso 3:
				seleciona(8)
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

	funcao inteiro quantidade(inteiro indice){
        inteiro num
        escreva("Quantos ", produtos[indice], "(s) deseja comprar? ")
        leia(num)
        se (qtdes[indice] < num){
        	escreva("Estoque insuficiente!\n\n")
        	retorne quantidade(indice)
        } senao {
        	retorne num
        }
    	}

	funcao menuFinal(){
		caracter resp, s, n
		
		escreva("=============== FINALIZAR PEDIDO ===============\n",
			   "Opção 1: Sim.\n",
			   "Opção 2: Não. Continuar comprando.\n",
			   "Opção 3: Cancelar e sair da conta.\n",
			   "Opção 0: Sair.\n",
			   "Deseja finalizar agora? ")
		leia(resp)
		limpa()

		escolha (resp) {
			caso '1': 
				escreva("O preço total foi: R$", mat.arredondar(precoPedido, 2), "\n",
					   "Volte sempre!\n")
			pare
			caso '2':
				menuPrincipal()
			pare	
			caso '3':
				escreva("Você cancelou sua compra com sucesso. \nEspero que volte mais vezes para nossa loja!\n\n")
				login()
			pare
			caso '0':
				sair()
			pare
			caso contrario	:
				escreva("Opção inválida :(\n")
		}
	}
	
	funcao erroLogin(inteiro erros){
		se(erros >= 3){
			escreva("Você ultrapassou a quantidade de 3 tentativas. Tente novamente em alguns segundos.\n\n")
			quantErros = 0
			u.aguarde(3000)
			login()
		}senao{
			escreva("Usuario ou Senha invalidos.\n")
			login()
		}
	}

	funcao seleciona(inteiro indice){
		inteiro quantiaComprada
		limpa()
		
			
		se (qtdes[indice] > 0){
			escreva("Você selecionou ", produtos[indice],"\n", "Temos ", qtdes[indice], " disponiveis em estoque.\n" )	
			quantiaComprada = quantidade(indice)		
			precoPedido += quantiaComprada * precos[indice]
			qtdes[indice] -= quantiaComprada
			
			limpa()
			escreva("Foram adicionados ", quantiaComprada, " ", produtos[indice], "(s) ao seu carrinho.")	
			continua()			
		} senao {
			limpa()
			escreva("Fora de estoque!")
			continua()
		}
		
	}

	funcao continua(){
		caracter confirma

		escreva("\nDeseja continuar comprando?\n",
			   "Opção 1: Sim\n",
			   "Opção 2: Não. Finalizar a compra\n",
			   "Opção 0: Voltar ao menu principal\n",
			   "Digite uma opção: ")
		leia(confirma)
		escolha(confirma){
			caso '1':
				limpa()
				produtosCategoria()
			pare
			caso '2':
				limpa()
				menuFinal()
			pare
			caso '0':
				limpa()
				menuPrincipal()
			pare
			caso contrario:
				limpa()
				escreva("Opção invalida!")
				continua()
			pare
		}
	}
	
	funcao sair(){
		caracter confirma
		limpa()
		escreva("Você tem certeza que deseja sair? \n1 - Sim \n2 - Não \n3 - Deslogar\n")
		leia(confirma)
		faca{
			limpa()
			escolha(confirma){
				caso '1':
					escreva("Volte sempre!!\n\n")
				pare
				caso '2':
					menuPrincipal()
				pare
				caso '3':
					escreva("Realize o login para continuar. \n")
					login()
				pare
				caso contrario:
					escreva("Opção invalida! \n")
					sair()
				pare
			}
		}enquanto(confirma != '1' )
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 996; 
 * @DOBRAMENTO-CODIGO = [11, 27, 44, 54, 77, 169, 208, 246, 283, 320, 365, 364, 428];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */