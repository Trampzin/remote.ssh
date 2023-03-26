programa
{
	
	funcao inicio()
	{
		inteiro candidato1=0, candidato2=0, branco=0, quantidadeDeVotos=0, nulo=0, voto
		real percent1, percent2, percentbranco, percentnulo
	
		faca{
			escreva("Digite o seu voto, candidato 1, candidato 2 , 3 para votar em branco ou 0 para encerrar a votação: ")
			leia(voto)
			escolha(voto){
				caso 1 :candidato1=candidato1+1
				pare
				caso 2 :candidato2=candidato2+1
				pare
				caso 3 :branco=branco+1
				pare
				caso 0 :escreva("Votação encerrada\n")
				caso contrario: nulo=nulo+1
				pare
				}	
		}enquanto(voto!=0)

			quantidadeDeVotos=candidato1+candidato2+branco+nulo-1
			percent1=(candidato1*100)/quantidadeDeVotos
			percent2=(candidato2*100)/quantidadeDeVotos
			percentbranco=(branco*100)/quantidadeDeVotos
			percentnulo=(nulo*100)/quantidadeDeVotos

			escreva("nVotos Totais: ", quantidadeDeVotos, "\nPercentuais: ","\nCandidato 1: ", percent1, "%", "\nCandidato 2: ", percent2, "%", "\nEm branco: ", percentbranco, "%", "\nNulos: ", percentnulo, "%")
			
			
		}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 170; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */