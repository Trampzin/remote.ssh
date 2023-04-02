programa
{

inteiro matriz[10][12] = {{0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0},
                        {0,0,0,0,0,0,0,0,0,0,0,0}}
inteiro nLinha=0, nColuna=0

    funcao inicio()
    {
    faca{
    	menu()
    }
    enquanto(opcao!=0)
        

    }
  
    // ESCOLHER ASSENTO      
    funcao escolher(){
    		para(inteiro l=0; l < 10; l++){
           	para(inteiro c=0; c < 12; c++){
           	escreva("\nA seguir, escolha a localização de seu assento nas fileiras de 1 a 10 e nas cadeiras de 1 a 12\n")
           	escreva("\nCaso digite um número invalido para sua linha ou coluna, retornaremos o menu inicial!\n")	
		 	escreva("\nEscolha o número da linha do seu assento:\n ")
		 	leia(nLinha)
		 	escreva("\nEscolha o número da coluna do seu assento: \n")
		 	leia(nColuna)
		 	limpa()
			se(nLinha<=0 ou nColuna<=0 ou nLinha>10 ou nColuna>12){
				escreva("\nAssento Inválido\n")
				menu()
			}
		 	senao{
		 		l= nLinha-1
		 		c= nColuna-1

		 		se(matriz[l][c]==1){
		 			escreva("\nAssento reservado, escolha outro:\n ")
		 		}
		 		senao{
		 			matriz[l][c]=1
		 			menu()
		 		}
			}
    			}
    		}
    }
    	
    
    			
	///LISTAR ASSENTOS	 	
	funcao reservar (){
		escreva("Lista de Reservas\n ")
		para(inteiro l=0; l < 10; l++){
           	para(inteiro c=0; c < 12; c++){
			nLinha= l+1
			nColuna= c+1
			escreva(matriz[l][c], " ")
          	}
          	escreva("\n")
                   	
		}					
	}
    		 	
    		
    	   

    funcao menu(){
    		faca{
    			escreva("MENU DO CINEMA\n")
    			escreva("1 - Nova Reserva\n")
    			escreva("2 - Listar\n")
    			escreva("0 - Sair\n")
    			escreva("Insira a opção: ")
    			leia(opcao)
    			limpa()

    			escolha(opcao){
    				caso 1: escolher()
    				pare
    				caso 2: reservar()
    				pare
    				    				
    			}
    		}
    		enquanto(opcao==1 ou opcao ==2)	
    			
    		
    }
   
    }



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 551; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */