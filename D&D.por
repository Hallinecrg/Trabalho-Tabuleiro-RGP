programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro painelInicial = 0, pos1 = 1, pos2 = 1, jogarDado, jogadorAtual = 1, valorDado, vitoriasP1 = 0, vitoriasP2 = 0
		
		enquanto(painelInicial != 3){
			escreva("1. Jogar\n")
			escreva("2. Verificar Placar\n")
			escreva("3. Fechar o Jogo\n")
			leia(painelInicial)

			se(painelInicial == 1){
				enquanto(pos1 < 20 e pos2 < 20){
					escreva("Jogador ", jogadorAtual, ", digite 1 para jogar seu dado: ")
					leia(jogarDado)
					
					se(jogadorAtual == 1 e jogarDado == 1){
						valorDado = u.sorteia(1, 6)
						pos1 = pos1 + valorDado
						se(pos1 >= 20){
							escreva("Parabéns jogador 1, você caiu na casa final e ganhou o jogo!\n\n")
							vitoriasP1++
						}senao{
							escreva("Jogador 1, você caiu na casa ", pos1, "\n\n")
							jogadorAtual = 2
						}
						
					}senao se(jogadorAtual == 2 e jogarDado == 1){
						valorDado = u.sorteia(1, 6)
						pos2 = pos2 + valorDado
						se(pos2 >= 20){
							escreva("Parabéns jogador 2, você caiu na casa final e ganhou o jogo!\n\n")
							vitoriasP2++
						}senao{
							escreva("Jogador 2, você caiu na casa ", pos2, "\n\n")
							jogadorAtual = 1
						}
					}
				}
				pos1 = 1
				pos2 = 1
				jogadorAtual = 1
				
			}senao se(painelInicial == 2){
				escreva("Número de vitórias do jogador 1: ", vitoriasP1, "\n")
				escreva("Número de vitórias do jogador 2: ", vitoriasP2, "\n\n")
			}senao se(painelInicial < 1 ou painelInicial > 3){
				escreva("Digite uma opção válida!\n\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1143; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */