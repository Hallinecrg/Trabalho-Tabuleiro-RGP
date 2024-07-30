programa
{
	inclua biblioteca Graficos --> g
	
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(800,600)
		g.definir_titulo_janela("Teste")

		enquanto (verdadeiro){
			g.definir_cor (g.COR_PRETO)
			g.limpar()
			g.definir_cor(g.COR_BRANCO)
			g.definir_tamanho_texto(100.0)
			g.desenhar_texto(200, 200,"Testando")
			g.renderizar()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */