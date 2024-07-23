programa
{
	inclua biblioteca Util --> u
	 
	
	funcao inicio()
	{
		inteiro Casas[26]
		inteiro casa1=0, casa2=0, jogador=1, sorteio, placar1=0, placar2=0
		real dado, jogar

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
        	 	sorteio= (u.sorteia(1, 6))
        	 	escreva("O número do dado foi ", sorteio)
        	 	casa1=casa1+sorteio
        	 	Casas[casa1]=Casas[casa1]+sorteio
        	 	escreva("\n O jogador 1 está na casa ", casa1)
        	     }
        	     se(casa1>=20 e jogador==1)
        	     {
        	  	escreva(" O jogador 1 derrotou o dragão primeiro!")
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
        	 	escreva("\n O jogador 2 está na casa ", casa2)
        	  }

        	  se(casa2>=20 e jogador==2)
        	  {
        	  	escreva(" \n O jogador 2 derrotou o dragão primeiro!")
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
 * @POSICAO-CURSOR = 2403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Casas, 8, 10, 5}-{casa1, 9, 10, 5}-{casa2, 9, 19, 5}-{jogador, 9, 28, 7}-{sorteio, 9, 39, 7}-{placar1, 9, 48, 7}-{placar2, 9, 59, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */