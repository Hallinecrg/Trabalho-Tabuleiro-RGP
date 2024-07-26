programa
{
	inclua biblioteca Util --> u
	 
	
	funcao inicio()
	{
		inteiro Casas[26]
		inteiro casa1=0, casa2=0, jogador=1, sorteio, placar1=0, placar2=0, troca
		real dado, jogar, Cancao=0

          escreva("Digite valor possitivo para jogar \n")
          leia(jogar)

       enquanto(jogar>=0)
       {
		escreva("Placar do jogador 1:  ", placar1)
		escreva("\n Placar do jogador 2:  ", placar2)
		casa1=0
		casa2=0

        enquanto(casa1<20 e casa2<20 e jogar>=0)
        {
        	jogador=1
        	
        	escreva("\n Jogador ", jogador, " digite qualquer número para rodar seu dado \n")
        	leia(dado)

        	 se (dado>=0 ou dado<0 e jogador==1){
        	 	  sorteio= (u.sorteia(1,6))
        	 	  escreva("O número do dado foi ", sorteio)
        	 	 casa1=casa1+sorteio
        	 	  Casas[casa1]=Casas[casa1]+sorteio
        	 	  escreva("\n O bando do jogador 1 está na casa ", casa1)
        	     }
        	     
        	     se(casa1==2)
        	     {
        	     	escreva(" Sorte! \n 'O mago do grupo, com seu vasto conhecimento de magia, \n lançou um encanto de ventos nos mercenários, \n transformando os seus pesados equipamentos estão leves quanto penas' \n Seu grupo avança para a casa 5")
        	     	casa1=casa1+3
        	     	Casas[casa1]=Casas[casa1]

        	     	escreva(" \n O bando do jogador 1 está na casa ", casa1)
        	     }

        	     se(casa1==3)
        	     {
        	     	escreva( " Karma! \n 'Durante sua jornada, o bando encontrou um viajante sendo atacado por um grupo de goblins que fizeram dos arredores da floresta o seu território. \n O grupo imediatamente os desafia, e após conquistar a vitoria, \n são recompensados pelo viajante com porções de energia que os permitem continuar sua jornada durante a noite e dia!' \n O jogador pode rodar um dado adicional de 3 lados.")
        	     	sorteio= (u.sorteia(1, 3))
        	     	escreva( "O número do dado foi ", sorteio)
        	     	casa1=casa1+sorteio
        	     	Casas[casa1]=Casas[casa1]+sorteio
        	     	escreva("\n O bando do jogador 1 está na casa ", casa1)
        	     }

        	     se(casa1==7)
        	     {
        	     	escreva(" Segure suas moedas! \n ' o bando foi subitamente atacado por famosos saqueadores vindos do norte, de um reino visinho. \n Apesar de serem habilmente  capazes de se defenderem e conquistarem a vitória, o paladinho sofreu uma laceração na perna. \n O clérigo, após realizar os primeiros socorros e fechar a ferida, relata ao resto do bando que o paladino só poderá se mover no próximo dia. \n O bando, sem outra escolha, decide fazer uma pausa de um dia.' \n O bando do jogador 1 não irá se mover por um turno")
        	     	casa1=7
        	     	sorteio=0
        	     	Casas[casa1]=Casas[casa1]+sorteio
        	     	escreva("\n O bando do jogador 1 está na casa ", casa1)

        	     	jogador=2

        	     	escreva("\n Jogador ", jogador, " digite qualquer número para rodar seu dado \n")
        	          leia(dado)

        	           sorteio= (u.sorteia(1, 6))
        	 	      escreva("O número do dado foi ", sorteio)
        	 	      casa2=casa2+sorteio
        	 	      Casas[casa2]=Casas[casa2]+sorteio
        	 	      escreva("\n O bando do jogador 2 está na casa ", casa2)
        	     }

        	     se(casa1==10)
        	     {
        	     	escreva(" Abracadabra, mas não do jeito esperado \n - 'Os trolls do pântano se provaram tão temíveis quanto as histórias contadas por veteranos que sobreviveram ao encontro. \n Em uma fervente batalha que seria cantadas por bardos, o mago utilizar uma de suas magias proibidas, extremamente poderosa mas instavel. \n O resultado não poderia ter sido previsto por nenhum profeta: \n Os trolls foram dizimados, mas a área foi envolta em ditúrbio mágico e o grupo no olho da tempestade, subitamente se deparam com uma vista bem diferente. \n O que diabos aconteceu?' \n Os jogadores trocam de posição pelo resultado de uma magia de teletransporte inesperado.")

        	     	troca=casa1
        	     	casa1=casa2
        	     	casa2=troca

        	     	escreva("O jogador 1 está na casa: ", casa1, " e o jogador 2 está na casa: ", casa2)
        	     }

        	     se(casa1==12)
        	     {
        	     	escreva(" Corram para as colinas! \n 'O bando se depara com uma vista assustadora: \n Um vilarejo em chamas, destruído, e várias marcas de uma batalha se mostram aparentes ao seu redor. \n O que poderia ter acontecido? A resposta se mostrou rapidamente, e não eram boas notícias. \n Os altos sons de tambores e o tremer da terra alertam o bando, que imendiatamente decidem bater em retirada. \n Um pequeno grupo de mercenários não possui chance contra a invasão de um exécito de orcs.' \n O jogador retrocede uma casa. \n")

        	     	 casa1--

        	     	 escreva("O jogador 1 está na casa ", casa1)
        	     }

        	     se(casa1==15)
        	     {
        	     	escreva(" Rock or Roll\n  'Uma passagem estreita, com um íngreme desfiladeiro aos lados. No fim da passagem existe um portão de pedra maciço firmemente fechado, bloqueando o avanço do bando. \n No centro do portão existe a face de um leão que, para a surpresa de todos, diz: \n 'Aventureiros, se desejam passar por este caminho, cante-me uma canção que acalme minha fúria. Caso contrário este portão jamais se abrirá.' \n Ao grupo só lhe restam duas opções: cantar e abrir os portões, ou encontrar um caminho alternativo que irá desvia-los do objetivo, consumindo tempo precioso. \n Qual a sua escolha?' \n Jogador 1, cante um trecho de uma canção ou volte duas casas. ")

        	     	escreva("O jogador 1 cantou alguma canção ? ( escreva um valor positivo para sim e um valor negativo para não ")
        	     	leia(Cancao)

        	     	se(Cancao>=0)
        	     	{
        	     		casa1=15

        	     		escreva(" O jogador 1 está na casa ", casa1)
        	     	}
        	     	senao
        	     	{
        	     		casa1=casa1-2

        	     		escreva(" O jogador 1 está na casa ", casa1)
        	     	}
        	     }

        	     se(casa1==19)
        	     {
        	     	escreva(" O começo do Fim, o Fim do Começo \n 'Finalmente, o grupo se encontra aos pés da temida Montanha Sombria. O bando se prepara para a luta final de sua jornada, e a mais perigosa. \n Porém, tal luta nunca veio a acontecer. Do topo da montanha, um rugido ensurdecedor, tremendo terra e céu, atordoa o bando que foi pego de surpresa. \n O dragão tinha percebido sua invasão e agiu de acordo. Após o rugido, grandes rochas rolam montanha abaixo, um deslizamento havia sido causado. Ao bando não restava escolhas a não ser orar aos deuses. \n O paladino, fiel em seu fervor ao divino, teve sua prece atendida. Antes de serem esmagados por rochas, o bando foi subitamente envolto em luzes, recobrando seus sentidos de volta no templo da capital, são e salvos, mas sua longa jornada tinha sido em vão.' \n O jogador volta à primeira casa")

        	     	 casa1=0

        	     	 escreva(" O jogador 1 voltou para a casa ", casa1)
        	     }

        	     se(casa1>=20 e jogador==1)
        	     {
        	  	  escreva(" 'Raios intermináveis, rios de lava, gigantes colunas de fogo e enormes estalactites de gelo. \n No meio do caos, o bando se encontra em uma luta épica contra Botegilr, usando a última de suas forças para lutar contra o terrível dragão. \n Finalmente uma chance se apresenta, e o Guerreiro não hesitou por um momento. Em um grande arco, a sua espada penetra as duras escamas do dragão, acertando um golpe certeiro em seu coração. Soltando um último rugido, o dragão, agora caído, encontrou o seu fim. \n O bando retorna à capital e são recebidos como heróis, sua história sendo contada em lendas por muitas gerações a vir.' \n Parabéns jogador 1, você derrotou o dragão e obteve a vitória!")
        	  	  placar1=placar1+1
        	  	  jogador=0
        	     }
        	     senao
        	     {
        	     	jogador=2
        	     }

        	     

        	     se(jogador==2)
        	     {
        	 	  escreva("\n Jogador ", jogador, " digite qualquer número para rodar seu dado \n")
        	       leia(dado)
        	     }
        	     
        	  se (dado>=0 ou dado<0 e jogador==2){
        	 	  sorteio= (u.sorteia(1, 6))
        	 	  escreva("O número do dado foi ", sorteio)
        	 	  casa2=casa2+sorteio
        	 	  Casas[casa2]=Casas[casa2]+sorteio
        	 	  escreva("\n O bando do jogador 2 está na casa ", casa2)
        	  }

        	   se(casa2==2)
        	     {
        	       escreva(" Sorte! \n 'O mago do grupo, com seu vasto conhecimento de magia, \n lançou um encanto de ventos nos mercenários, \n transformando os seus pesados equipamentos estão leves quanto penas' \n Seu grupo avança para a casa 5")
        	       casa2=5
        	       Casas[casa2]=Casas[casa2]

        	       escreva(" \n O bando do jogador 2 está na casa ", casa2)
        	     }

        	      se(casa2==3)
        	     {
        	     	escreva( " Karma! \n 'Durante sua jornada, o bando encontrou um viajante sendo atacado por um grupo de goblins que fizeram dos arredores da floresta o seu território. \n O grupo imediatamente os desafia, e após conquistar a vitoria, \n são recompensados pelo viajante com porções de energia que os permitem continuar sua jornada durante a noite e dia!' \n O jogador pode rodar um dado adicional de 3 lados.")
        	     	casa2=3
        	     	sorteio= (u.sorteia(1, 3))
        	     	escreva( "O número do dado foi ", sorteio)
        	     	casa2=casa2+sorteio
        	     	Casas[casa2]=Casas[casa2]+sorteio
        	     	escreva("\n O bando jogador 2 está na casa ", casa2)
        	     }

        	      se(casa2==7)
        	     {
        	     	escreva(" Segure suas moedas! \n ' o bando foi subitamente atacado por famosos saqueadores vindos do norte, de um reino visinho. \n Apesar de serem habilmente  capazes de se defenderem e conquistarem a vitória, o paladinho sofreu uma laceração na perna. \n O clérigo, após realizar os primeiros socorros e fechar a ferida, relata ao resto do bando que o paladino só poderá se mover no próximo dia. \n O bando, sem outra escolha, decide fazer uma pausa de um dia.' \n O bando do jogador 1 não irá se mover por um turno")
        	     	casa2=7
        	     	sorteio=0
        	     	Casas[casa2]=Casas[casa2]+sorteio
        	     	escreva("\n O bando do jogador 2 está na casa ", casa2)

        	     	jogador=1
        	
               	escreva("\n Jogador ", jogador, " digite qualquer número para rodar seu dado \n")
        	          leia(dado)

        	           sorteio= (u.sorteia(1, 6))
        	 	      escreva("O número do dado foi ", sorteio)
        	 	      casa1=casa1+sorteio
        	 	      Casas[casa1]=Casas[casa1]+sorteio
        	 	      escreva("\n O bando do jogador 1 está na casa ", casa1)
        	     }

        	     se(casa2==10)
        	     {
        	     	escreva(" Abracadabra, mas não do jeito esperado \n - 'Os trolls do pântano se provaram tão temíveis quanto as histórias contadas por veteranos que sobreviveram ao encontro. \n Em uma fervente batalha que seria cantadas por bardos, o mago utilizar uma de suas magias proibidas, extremamente poderosa mas instavel. \n O resultado não poderia ter sido previsto por nenhum profeta: \n Os trolls foram dizimados, mas a área foi envolta em ditúrbio mágico e o grupo no olho da tempestade, subitamente se deparam com uma vista bem diferente. \n O que diabos aconteceu?' \n Os jogadores trocam de posição pelo resultado de uma magia de teletransporte inesperado.")

        	     	troca=casa2
        	     	casa2=casa1
        	     	casa1=troca

        	     	escreva("O jogador 2 está na casa: ", casa2, " e o jogador 1 está na casa: ", casa1)
        	     }

        	      se(casa2==12)
        	     {
        	     	escreva(" Corram para as colinas! \n 'O bando se depara com uma vista assustadora: \n Um vilarejo em chamas, destruído, e várias marcas de uma batalha se mostram aparentes ao seu redor. \n O que poderia ter acontecido? A resposta se mostrou rapidamente, e não eram boas notícias. \n Os altos sons de tambores e o tremer da terra alertam o bando, que imendiatamente decidem bater em retirada. \n Um pequeno grupo de mercenários não possui chance contra a invasão de um exécito de orcs.' \n O jogador retrocede uma casa. \n")

        	     	 casa2--

        	     	 escreva("O jogador 2 está na casa ", casa2)
        	     }

        	     se(casa2==15)
        	     {
        	     	escreva(" Rock or Roll\n  'Uma passagem estreita, com um íngreme desfiladeiro aos lados. No fim da passagem existe um portão de pedra maciço firmemente fechado, bloqueando o avanço do bando. \n No centro do portão existe a face de um leão que, para a surpresa de todos, diz: \n 'Aventureiros, se desejam passar por este caminho, cante-me uma canção que acalme minha fúria. Caso contrário este portão jamais se abrirá.' \n Ao grupo só lhe restam duas opções: cantar e abrir os portões, ou encontrar um caminho alternativo que irá desvia-los do objetivo, consumindo tempo precioso. \n Qual a sua escolha?' \n Jogador 1, cante um trecho de uma canção ou volte duas casas. ")

        	     	escreva("O jogador 2 cantou alguma canção ? ( escreva um valor positivo para sim e um valor negativo para não ")
        	     	leia(Cancao)

        	     	se(Cancao>=0)
        	     	{
        	     		casa2=15

        	     		escreva(" O jogador 2 está na casa ", casa2)
        	     	}
        	     	senao
        	     	{
        	     		casa2=casa2-2

        	     		escreva(" O jogador 2 está na casa ", casa2)
        	     	}
        	     }

        	     se(casa2==19)
        	     {
        	     	escreva(" O começo do Fim, o Fim do Começo \n 'Finalmente, o grupo se encontra aos pés da temida Montanha Sombria. O bando se prepara para a luta final de sua jornada, e a mais perigosa. \n Porém, tal luta nunca veio a acontecer. Do topo da montanha, um rugido ensurdecedor, tremendo terra e céu, atordoa o bando que foi pego de surpresa. \n O dragão tinha percebido sua invasão e agiu de acordo. Após o rugido, grandes rochas rolam montanha abaixo, um deslizamento havia sido causado. Ao bando não restava escolhas a não ser orar aos deuses. \n O paladino, fiel em seu fervor ao divino, teve sua prece atendida. Antes de serem esmagados por rochas, o bando foi subitamente envolto em luzes, recobrando seus sentidos de volta no templo da capital, são e salvos, mas sua longa jornada tinha sido em vão.' \n O jogador volta à primeira casa")

        	     	 casa2=0

        	     	 escreva(" O jogador 2 voltou para a casa ", casa2)
        	     }



        	  se(casa2>=20 e jogador==2)
        	  {
        	  	escreva(" 'Raios intermináveis, rios de lava, gigantes colunas de fogo e enormes estalactites de gelo. \n No meio do caos, o bando se encontra em uma luta épica contra Botegilr, usando a última de suas forças para lutar contra o terrível dragão. \n Finalmente uma chance se apresenta, e o Guerreiro não hesitou por um momento. Em um grande arco, a sua espada penetra as duras escamas do dragão, acertando um golpe certeiro em seu coração. Soltando um último rugido, o dragão, agora caído, encontrou o seu fim. \n O bando retorna à capital e são recebidos como heróis, sua história sendo contada em lendas por muitas gerações a vir.' \n Parabéns jogador 2, você derrotou o dragão e obteve a vitória!")
        	  	placar2=placar2+1
        	  }
        }

          se(jogar>=0)
          {
            escreva(" \n Deseja continuar? valor possitivo para sim e valor negativo para não \n")
		  leia(jogar)
          }
       }

        se(jogar<0)
        {
        	escreva(" \n Fim do jogo, o placar do jogador 1 é :", placar1, " e do jogador 2 é :", placar2)

        	 se(placar1>placar2)
        	 {
        	 	escreva("\n Jogador 1 foi o campeão  ")
        	 }

        	 se(placar2>placar1)
        	 {
        	 	escreva("\n Jogador 2 foi o campeão  ")
        	 }
        	 se (placar1==placar2)
        	 {
        	 	escreva("\n Jogador 1 e jogador 2 ficaram empatado")
        	 }
        }
      

       	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14866; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */