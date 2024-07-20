programa
{
	inclua biblioteca Util --> u
	 
	
	funcao inicio()
	{
		inteiro Casas[21]
		inteiro casa1=0, casa2=0, jogador=1, dado, sorteio

        enquanto(casa1<20 e casa2<20)
        {
        	escreva(" Jogador ", jogador, " digite 1 para rodar seu dado \n")
        	leia(dado)

        	 se (dado==1 e jogador==1){
        	 	sorteio= (u.sorteia(1, 6))
        	 	escreva("O número do dado foi ", sorteio)
        	 	casa1=casa1+sorteio
        	 	Casas[casa1]=Casas[casa1]+sorteio
        	 	escreva("\n O jogador 1 está na casa ", casa1)

        	 	jogador=2
        	 	escreva("\n Jogador ", jogador, " digite 1 para rodar seu dado \n")
        	     leia(dado)

        	     
        	     
        	 	
        	 }
        	  se (dado==1 e jogador==2){
        	 	sorteio= (u.sorteia(1, 6))
        	 	escreva("O número do dado foi ", sorteio)
        	 	casa2=casa2+sorteio
        	 	Casas[casa2]=Casas[casa2]+sorteio
        	 	escreva("\n O jogador 1 está na casa ", casa2)
        	  }
        }
        
		
      

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Casas, 8, 10, 5}-{casa1, 9, 10, 5}-{casa2, 9, 19, 5}-{jogador, 9, 28, 7}-{sorteio, 9, 45, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */