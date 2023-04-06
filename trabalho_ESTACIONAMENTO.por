programa
{
	inclua biblioteca Util --> u
	inteiro posicao, saida1
	inteiro vetor[30] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
	funcao inicio()
	{
		menu()
	}
	funcao menu(){
		inteiro opcao	
		 
			
			faca{
			escreva("---------------------------------------\n")
			escreva("1- Entrada de Veiculos\n")
			escreva("2- Saída de veiculos\n")
			escreva("3- Listar Vagas\n")
			escreva("4- Sair do programa\n")
			escreva("---------------------------------------\n")
			escreva("Digite uma opção:")
			leia(opcao)
			escolha(opcao){
			caso  1: entrada()
			pare
			caso  2: saida()
			pare
			caso  3: listar()
			pare
			caso  4: escreva("Programa finalizdo")
			pare
			caso contrario : escreva("Opção invalida!!\n")
			pare	
			}
			
		
			
		}enquanto(opcao<4)
			
			
	}
	funcao entrada(){
            limpa()
            caracter opcao
            para(inteiro l=0; l < 30; l++){
               escreva("\nEscolha o Numero de sua vaga de 1 a 30:\n ")
             	leia(posicao)
            	 limpa()
            	se(posicao<=0 ou posicao>30){
                escreva("\nVaga Inexistente\n")

            	}
             	senao{
                 l= posicao-1


                 se(vetor[l]==1){
                     escreva("\nVaga Reservada, escolha outra:\n ")
                 }
                 senao{
                     vetor[l]=1

                 }
               escreva("deseja continuar?S/s ou N/n:")
			leia(opcao)
			se(opcao=='N' ou opcao=='n'){
				limpa()
				pare
			}
			escreva("\n")
			
			
             }
           }
	}
	funcao saida(){
             limpa()
             caracter opcao
                para(inteiro l=0; l < 30; l++){
                     escreva("\nEscolha o Numero de sua para sair de 1 a 30: ")
                     leia(saida1)
                    se(saida1<=0 ou saida1>30){
                   	 	escreva("\nVaga Inexistente\n")

            		}
             		senao{
                 		l= saida1-1


                 se(vetor[l]==0){
                     	escreva("\nNão existe nenhum veículo nesta vaga:\n ")
                 }
                 senao{
                     	vetor[l]=0
                     	escreva("O seu veículo, deixou a vaga", "\n")

                 }
               		escreva("deseja continuar?S/s ou N/n:")
                		leia(opcao)
                se(opcao=='N' ou opcao=='n'){
                limpa()
                pare


                }
           	 }
              }
   }
	funcao listar (){
        	limpa()
        	escreva("Lista de Reservas\n ")           	
            	para(inteiro i=0; i < 30; i++){
                posicao= i+1
            	escreva(vetor[i], " ")
            	}
              	escreva("\n")
              	u.aguarde(3000)
              	limpa()

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2749; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */