programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro painelInicial = 0, pos1 = 1, pos2 = 1, jogarDado = 0, jogadorAtual = 1, valorDado, vitoriasP1 = 0, vitoriasP2 = 0, impedido1 = 0, impedido2 = 0, troca = 0
		
		enquanto(painelInicial != 3){
			escreva("1. Jogar\n\n")
			escreva("2. Verificar Placar\n\n")
			escreva("3. Fechar o Jogo\n\n")
			leia(painelInicial)
			escreva("\n")

			se(painelInicial == 1){
				enquanto(pos1 < 20 e pos2 < 20){
						se(jogadorAtual == 1){
							se(impedido1 == 0){
								escreva("Jogador 1, digite 1 para jogar seu dado: ")
								leia(jogarDado)

								se(jogarDado == 1){
									valorDado = u.sorteia(1, 6)
									pos1 = pos1 + valorDado
									escreva("O número no dado foi ", valorDado, ".\n")
								
									se(pos1 == 2){
										escreva("Seu grupo chegou à Casa 2! O mago do grupo, com seu vasto conhecimento de magia, lançou um encanto de ventos nos mercenários, deixando seus equipamentos leves como penas.\n")
										escreva("Jogador 1, Seu grupo avançou para a Casa 5.\n\n")
										pos1 = 5
									
									}senao se(pos1 == 3){
										escreva("Seu grupo chegou à Casa 3! Durante sua jornada, o bando encontrou um viajante sendo atacado por um grupo de goblins que fizeram dos arredores da floresta o seu território. O grupo imediatamente os desafia, e após conquistar vitória, são recompensados pelo viajante com poções de energia que os permitem continuar sua jornada durante noite e dia!\n")
				                        		escreva("Digite 1 para jogar o dado adicional: ")
				                        		leia(jogarDado)
				                        	
										enquanto(jogarDado != 1){
											escreva("Esse não é um valor válido! Digite 1 para jogar o dado adicional: ")
											leia(jogarDado)
										}
										
										valorDado = u.sorteia(1, 3)
										pos1 = pos1 + valorDado
										escreva("O número no dado adicional foi ", valorDado, ".\n")
										escreva("Jogador 1, seu grupo está agora na Casa ", pos1, ".\n\n")
	
									}senao se(pos1 == 7){
										escreva("Seu grupo chegou à Casa 7! Segurem suas moedas! O bando foi subitamente atacado por saqueadores vindos do norte, de um reino vizinho. Apesar de serem habilmente capazes de se defenderem e conquistarem vitória, o paladino sofreu uma laceração na perna. O clérigo, após realizar os primeiros socorros e fechar a ferida, relata ao resto do bando que o paladino só poderá se mover no próximo dia. O bando, sem outra escolha, decide fazer uma pausa de um dia. Seu bando não irá se mover por 1 turno.\n\n")
										impedido1 = 1

									}senao se(pos1 == 10){
										escreva("Seu grupo chegou à Casa 10! Abracadabra, mas não do jeito esperado. Os trolls do pântano se provaram tão temíveis quanto as histórias contadas por veteranos que sobreviveram ao encontro. Em uma fervente batalha que seria cantada por bardos, o Mago decide utilizar uma de suas magias proibidas, extremamente poderosa mas instável. O resultado não poderia ter sido previsto por nenhum profeta: Os trolls foram dizimados, mas a área foi envolta em um distúrbio mágico e o grupo, no olho da tempestade, subitamente se deparam com uma vista bem diferente. O que diabos aconteceu? Os bandos trocam de posição pelo resultado de uma magia de teletransporte inesperada.\n\n")
										troca = pos1
										pos1 = pos2
										pos2 = troca
										escreva("Agora, o bando do jogador 1 está na Casa ", pos1, " e o bando do jogador 2 na Casa ", pos2, ".\n\n")

									}senao se(pos1 == 12){
										escreva("Seu grupo chegou à Casa 12! O bando se depara com uma vista assustadora: Um vilarejo em chamas, destruído, e várias marcas de uma batalha se mostram aparentes ao seu redor. O que poderia ter acontecido? A resposta se mostrou rapidamente, e não eram boas notícias. Os altos sons de tambores e o tremer da terra alertam o bando, que imediatamente decidem bater em retirada. Um pequeno grupo de mercenários não possui chance contra a invasão de um exército de orcs. O grupo terá que retroceder uma casa!\n")
										pos1--
										escreva("Agora, o bando do jogador 1 está na Casa 11!\n\n")

									}senao se(pos1 == 19){
										escreva("Seu grupo alcançou a Casa 19! Finalmente, o grupo se encontra aos pés da temida Montanha Sombria. O bando se prepara para a luta final de sua jornada, e a mais perigosa. Porém, tal luta nunca veio a acontecer. Do topo da montanha, um rugido ensurdecedor, tremendo terra e céu, atordoa o bando que foi pego de surpresa. O dragão tinha percebido sua invasão e agiu de acordo. Após o rugido, grandes rochas rolam montanha abaixo, um deslizamento havia sido causado. Ao bando não restava escolhas a não ser orar aos deuses. O paladino, fiel em seu fervor ao divino, teve sua prece atendida. Antes de serem esmagados por rochas, o bando foi subitamente envolto em luzes, recobrando seus sentidos de volta no templo da capital, são e salvos, mas sua longa jornada tinha sido em vão. O bando retorna ao começo do trajeto.\n")
										pos1 = 1
										escreva("Agora, o bando do jogador 1 está na Casa 1!\n\n")
									
									}senao se(pos1 >= 20){
										escreva("Raios intermináveis, rios de lava, gigantes colunas de fogo e enormes estalactites de gelo. No meio do caos, o bando se encontra em uma luta épica contra Botegilr, usando a última de suas forças para lutar contra o terrível dragão. Finalmente uma chance se apresenta, e o Guerreiro não hesitou por um momento. Em um grande arco, a sua espada penetra as duras escamas do dragão, acertando um golpe certeiro em seu coração. Soltando um último rugido, o dragão, agora caído, encontrou o seu fim. O bando retorna à capital e são recebidos como heróis, sua história sendo contada em lendas por muitas gerações a vir. Parabéns jogador 1, você derrotou o dragão e obteve a vitória!")
									
									}senao{
										escreva("Jogador 1, seu grupo caiu na Casa ", pos1, "\n\n")
									}

									jogadorAtual = 2
									
								}senao{
									escreva("Digite um valor válido!\n\n")
								}
								
							}senao{
								impedido1 = 0
								escreva("Jogador 1, você está impedido de jogar nessa rodada!\n\n")
								jogadorAtual = 2
							}

						
						}senao se(jogadorAtual == 2){
							se(impedido2 == 0){
								escreva("Jogador 2, digite 1 para jogar seu dado: ")
								leia(jogarDado)

								se(jogarDado == 1){
									valorDado = u.sorteia(1, 6)
									pos2 = pos2 + valorDado
									escreva("O número no dado foi ", valorDado, "\n")
		
									se(pos2 == 2){
										escreva("Você caiu na Casa 2! Um feixe mágico de luz te transporta diretamente para a Casa 5. A aventura continua!\n\n")
										pos2 = 5
											
									}senao se(pos2 == 3){
										escreva("Você chegou à Casa 3! O destino lhe oferece uma chance extra: lance o dado de 3 lados e veja até quantas casas você pode avançar além desta. Boa sorte! Digite 1 novamente para jogar o dado extra: ")
						                    leia(jogarDado)
			
						                    enquanto(jogarDado != 1){
											escreva("Esse não é um valor válido! Digite 1 para jogar o dado extra: ")
											leia(jogarDado)
										}
			
										valorDado = u.sorteia(1, 3)
										pos2 = pos2 + valorDado
										escreva("O número no dado extra foi ", valorDado, "\n")
										escreva("Jogador 2, você está agora na Casa ", pos2, "\n\n")
		
									}senao se(pos2 == 7){
										impedido2 = 1
										escreva("Você caiu na Casa 7 e tropeça em um feitiço de paralisia! Fique em repouso na próxima rodada para recuperar suas forças e se preparar para a próxima aventura.\n\n")

									}senao se(pos2 == 10){
										escreva("Você caiu na Casa 10 e se deparou com um feitiço que lhe trocou de posição com o jogador adversário!\n")
										troca = pos2
										pos2 = pos1
										pos1 = troca
										escreva("Agora, o jogador 1 está na Casa ", pos1, " e o jogador 2 na Casa ", pos2, "!\n\n")

									}senao se(pos2 == 12){
										escreva("Você caiu na Casa 12! Um imprevisto lhe forçou a voltar uma casa!\n")
										pos2--
										escreva("Jogador 2, você está agora na Casa 11!\n\n")

									}senao se(pos2 == 19){
										escreva("Você chegou à Casa 19! Mas espera aí... Esse tempo todo você pegou o caminho errado! Volte para a casa 1 novamente!\n")
										pos2 = 1
										escreva("Jogador 2, você está agora na Casa 1!\n\n")
																		
									}senao se(pos2 >= 20){
										escreva("Parabéns jogador 2, você chegou na casa final e ganhou o jogo!\n\n")
										vitoriasP2++
											
									}senao{
										escreva("Jogador 2, você caiu na Casa ", pos2, "\n\n")
									}

									jogadorAtual = 1
									
								}senao{
									escreva("Digite um valor válido!\n\n")
								}
								
							}senao{
								impedido2 = 0
								escreva("Jogador 2, você está impedido de jogar nessa rodada!\n\n")
								jogadorAtual = 1
							}
						}
				}
				
				pos1 = 1
				pos2 = 1

				escreva("Número de vitórias do jogador 1: ", vitoriasP1, "\n")
				escreva("Número de vitórias do jogador 2: ", vitoriasP2, "\n\n")
				
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
 * @POSICAO-CURSOR = 964; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pos1, 7, 29, 4}-{pos2, 7, 39, 4}-{valorDado, 7, 82, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */