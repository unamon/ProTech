programa
{
	inclua biblioteca Graficos--> g
	
	
	funcao inicio()
	{
	//	imagem1() // Notebook
	//	imagem2() // Computador
	//	imagem3() // Impressora
	//	imagem4() // celular
	//	imagem5() // tablet
	//	imagem6() // powerbank
	//	imagem7() // xbox
	//	imagem8() // ps4
	//	imagem9() // nintendo
	}

	funcao imagem1(){

		
		inteiro imag = g.carregar_imagem("imagens/imagem1.jpg")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(735, 549)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()

		}
	}

	funcao imagem2(){

		inteiro imag = g.carregar_imagem("imagens/imagem2.jpg")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(458, 642)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()

	 	}
	}

	funcao imagem3(){

		inteiro imag = g.carregar_imagem("imagens/imagem3.jpg")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(800, 650)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()
		}
	}
	funcao imagem4(){

		inteiro imag = g.carregar_imagem("imagens/imagem4.png")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(660, 502)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()
		}
	}

	funcao imagem5() {

		inteiro imag = g.carregar_imagem("imagens/imagem5.jpg")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(617, 463)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()
	  	}
	}

	funcao imagem6(){

		inteiro imag = g.carregar_imagem("imagens/imagem6.jpg")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(550, 550)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()
		}
	}

	funcao imagem7(){

		inteiro imag = g.carregar_imagem("imagens/imagem7.png")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(600, 600)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()
		}
	}

	funcao imagem8(){

		inteiro imag = g.carregar_imagem("imagens/imagem8.jpg")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(500, 225)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()
		}
	}
	funcao imagem9(){

		inteiro imag = g.carregar_imagem("imagens/imagem9.jpg")

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(474, 419)
		g.definir_titulo_janela("Importar imagens | Portugol Studio")

		enquanto(verdadeiro){
			g.desenhar_imagem(0 ,0, imag)
			g.renderizar()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 93; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */