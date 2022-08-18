programa{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inclua biblioteca Graficos --> g
	
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
			
	funcao inicio(){//Pergunta se deseja entrar na loja
		caracter opcao
		
		escreva("Deseja entrar na ProTech? \n",
			   "Opção 1 - Sim \n",
			   "Opção 2 - Não \n",
			   "Digite uma opção: ")
		leia(opcao)
		limpa()
		
		escolha(opcao){
			caso '1':
				escreva("Bem vindo à\n")
				logo()
				login()
			pare
			caso '2':
				escreva("Tudo bem. Volte sempre que quiser!\n")
			pare
			caso contrario:
				escreva("Por favor insira uma opção válida!\n\n")
				inicio()
		}
	}
	
	funcao logo(){//Logo da loja
		escreva("██████╗ ██████╗  █████╗ ████████╗███████╗ █████╗ ██╗  ██╗\n",
			   "██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗██║  ██║\n",
			   "██████╔╝██████╔╝██║  ██║   ██║   █████╗  ██║  ╚═╝███████║\n",
			   "██╔═══╝ ██╔══██╗██║  ██║   ██║   ██╔══╝  ██║  ██╗██╔══██║\n",
			   "██║     ██║  ██║╚█████╔╝   ██║   ███████╗╚█████╔╝██║  ██║\n",
			   "╚═╝     ╚═╝  ╚═╝ ╚════╝    ╚═╝   ╚══════╝ ╚════╝ ╚═╝  ╚═╝\n\n")
	}

	funcao login(){//Login e validação
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
	
	funcao menuPrincipal(){//Exibe "Menu principal"
		inteiro opcao

		escreva("Olá, ", usuario, "! O que deseja fazer?\n\n" )
	
		escreva("=============== MENU PRINCIPAL ===============\n",
			   "Opção 1 - Acessar produtos por categoria.\n",
			   "Opção 2 - Acessar lista de produtos completa.\n",
			   "Opção 3 - Finalizar compra.\n",
			   "Opção 0 - Sair\n",
			   "==============================================\n\n",
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
	}

	funcao listaProdutos(){//Exibe todos os produtos
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
		escreva("=========================================\n\n",
			   "Digite um produto que deseja comprar, ou 0 para sair: ")
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

	funcao produtosCategoria() {//Seleção de categorias

		inteiro opcao
		
		escreva("=============== CATEGORIA DE PRODUTOS ===============\n",
			   "Opção 1 - Escritório\n",
			   "Opção 2 - Portáteis\n",
			   "Opção 3 - Consoles\n",
			   "Opção 0 - Voltar ao menu principal\n",
			   "=====================================================\n\n",
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
				imagem2()				
			pare
			caso 2:
				imagem1()
				
			pare
			caso 3:
				imagem3()
			pare
			caso 0:
				produtosCategoria()
			pare
			caso contrario:
				escreva("Por favor selecione uma opção valida!")
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
				imagem4()
			pare
			caso 2:
				imagem5()
			pare
			caso 3:
				imagem6()
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
				imagem7()
			pare
			caso 2:
				imagem8()
			pare
			caso 3:
				imagem9()
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

	funcao inteiro quantidade(inteiro indice){//Controle de estoque
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

	funcao menuFinal(){ //Pergunta se deseja finalizar o pedido
		caracter resp, s, n
		
		
		escreva("================ FINALIZAR PEDIDO ================\n",
			   "Deseja finalizar o pedido?\n",
			   "Opção 1 - Sim.\n",
			   "Opção 2 - Não. Continuar comprando.\n",
			   "Opção 3 - Cancelar e sair da conta.\n",
			   "Opção 0 - Sair.\n",
			   "==================================================\n\n",
			   "Digite uma opção:  ")
		leia(resp)
		limpa()

		escolha (resp) {
			caso '1': 
				escreva("Valor total do pedido: R$", mat.arredondar(precoPedido, 2), "\n")
				confirmacaoCompra()
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
	
	funcao confirmacaoCompra(){ //Pergunta se deseja confirmar a compra
		caracter opcao
	
		escreva("================ CONFIRMAÇÃO ================\n",
			   "Opção 1 - Sim\n",
			   "Opção 2 - Não\n",
			   "=============================================\n\n",
			   "Deseja confirmar a compra? ")
		leia(opcao)
		
		escolha(opcao){
			caso '1':
				escreva("Compra finalizada. Volte sempre!\n\n")
			pare
			caso '2':
				menuFinal()
			pare
			caso contrario:
				escreva("Opção invalida!")
				confirmacaoCompra()
			pare
		}
		
	}
	
	funcao erroLogin(inteiro erros){ //Tratamento de erros repetidos no login
		se(erros >= 3){
			escreva("Você ultrapassou a quantidade de 3 tentativas. Tente novamente em alguns segundos.\n\n")
			quantErros = 0
			u.aguarde(3000)
			cancelaLogin()
		}senao{
			escreva("Usuario ou Senha invalidos.\n")
			login()
		}
	}

	funcao cancelaLogin(){//Pergunta se deseja cancelar o login
		caracter opcao

		escreva("Deseja cancelar o login?\n",
			   "Opção 1 - Sim.\n",
			   "Opção 2 - Não.\n",
			   "Digite uma opção:  ")
		leia(opcao)
		limpa()	
		
		escolha(opcao){
			caso '1':
				escreva("Login cancelado.\n")
				inicio()				
			pare
			caso '2':
				login()
			pare
			caso contrario:
				escreva("Opção invalida!")
				cancelaLogin()
			pare
		}
	}

	funcao seleciona(inteiro indice){//Informa o produto selecionado e diminui no estoque
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
	
	funcao continua(){//Pergunta se deseja continuar comprando
		caracter confirma

		escreva("\n\nOpção 1: Continuar comprando.\n",
			   "Opção 2: Finalizar a compra.\n",
			   "Opção 0: Voltar ao menu principal.\n",
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
	
	funcao sair(){//Confirmação de saida
		caracter confirma
		limpa()
		escreva("Você tem certeza que deseja sair? \n1 - Sim \n2 - Não \n3 - Sair da conta\n")
		leia(confirma)
		limpa()
		//faca{
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
		//}enquanto(confirma != '1' )
	}
	
		//Imagens
	funcao imagem1(){//Notebook
		
		inteiro imag = g.carregar_imagem("imagens/imagem1.jpg")
		logico i = verdadeiro
		
		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(735, 549)
		g.definir_titulo_janela("Notebook")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(1)
	}

	funcao imagem2(){//Computador

		inteiro imag = g.carregar_imagem("imagens/imagem2.jpg")
		logico i = verdadeiro

		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(458, 642)
		g.definir_titulo_janela("Computador")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(0)
	}

	funcao imagem3(){//Impressora

		inteiro imag = g.carregar_imagem("imagens/imagem3.jpg")
		logico i = verdadeiro

		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(800, 650)
		g.definir_titulo_janela("Impressora")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(2)
	}
	
	funcao imagem4(){//Celular

		inteiro imag = g.carregar_imagem("imagens/imagem4.png")
		logico i = verdadeiro

		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(660, 502)
		g.definir_titulo_janela("Celular")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(3)
	}

	funcao imagem5(){//Tablet

		inteiro imag = g.carregar_imagem("imagens/imagem5.jpg")
		logico i = verdadeiro

		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(617, 463)
		g.definir_titulo_janela("Tablet")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(4)
	}

	funcao imagem6(){//PowerBank

		inteiro imag = g.carregar_imagem("imagens/imagem6.jpg")
		logico i = verdadeiro

		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(550, 550)
		g.definir_titulo_janela("PowerBank")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(5)
	}

	funcao imagem7(){//Xbox

		inteiro imag = g.carregar_imagem("imagens/imagem7.png")
		logico i = verdadeiro

		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(600, 600)
		g.definir_titulo_janela("Xbox")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(6)
	}

	funcao imagem8(){//PS4

		inteiro imag = g.carregar_imagem("imagens/imagem8.jpg")
		logico i = verdadeiro

		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(500, 225)
		g.definir_titulo_janela("PlayStation 4")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(7)
	}
	
	funcao imagem9(){//Nintendo

		inteiro imag = g.carregar_imagem("imagens/imagem9.jpg")
		logico i = verdadeiro

		g.iniciar_modo_grafico(i)
		g.definir_dimensoes_janela(474, 419)
		g.definir_titulo_janela("Nintendo Switch")

		g.desenhar_imagem(0 ,0, imag)
		g.renderizar()
		u.aguarde(3000)
		i = falso
		g.encerrar_modo_grafico()
		seleciona(8)
	}
}
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1111; 
 * @DOBRAMENTO-CODIGO = [21, 46, 55, 78, 114, 169, 209, 247, 285, 323, 335, 370, 395, 407, 432, 453, 483, 510, 527, 544, 561, 578, 595, 612, 629, 646];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */