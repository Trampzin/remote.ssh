
programa
{
	inclua biblioteca Util
 --> u
	inteiro posicao=0, contadorQuarto=0
	caracter especialidade, opcao1
	cadeia nome, telefone, servico 
	real pediatria =150.00, geral = 120.00, internacao1=500.00, valor = 0.0, totalInternacao= 0.0, valorTotal1=0.0, valorPediatria=0.0, valorGeral=0.0, totalHospital= 0.0, contadorPediatria=0.0, contadorGeral=0.0
	
inteiro vetor[20] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
	funcao inicio()
	{
		menu()
	}
	funcao menu(){
		inteiro opcao
		faca{
			escreva("HOSPITAL - XPTO\n")
			escreva("-------------------------------\n")
			escreva("1 - Consulta Ambulatorial\n")
			escreva("2 - Internação\n")
			escreva("3 - Listar Quartos\n")
			escreva("4 - Faturamento\n")
			escreva("5 - Sair do Programa\n")
			escreva("-------------------------------\n")
			escreva("Digite uma opção:")
			leia(opcao)
			escolha(opcao){
				caso  1: consulta()
				pare
				caso  2: internacao()
				pare
				caso  3: listar()
				pare
				caso  4: faturamento()
				pare
				caso  5: escreva("\nPrograma Finalizado\n")
				pare
				caso contrario : escreva("Opção invalida!!\n")
				pare	
		}
	}enquanto(opcao<5)
		
	}
	funcao consulta(){
	
		escreva("Digite o nome do paciente:\t")
		leia(nome)
		escreva("\nDigite o telefone do paciente\t")
		leia(telefone)	
		escreva("\nDigite a especialidade desejada, pediatra ou geral: P ou G\t")
		leia(especialidade)
		se(especialidade=='p' ou especialidade =='P'){
			servico="Pediatra"
			contadorPediatria++
			limpa()
		
			
		}senao{
			servico="Geral"
			contadorGeral++
			especialidade='G'
			limpa()
		}
		preco()
		cadastro()
		
	}
	funcao cadastro(){
		escreva("\nO nome do paciente é: ",nome)
		escreva("\nO telefone do paciente é: ",telefone)
		escreva("\nA especialidade desejada é: ",servico)
		escreva("\nO valor da consulta é: ", valor,"\n")
		u.aguarde(3000)
		
	}
	funcao preco(){
		se(especialidade=='G' ou especialidade=='g'){
			valor=geral
		}senao{
			valor=pediatria
		}
	}

   
    funcao listar (){
            limpa()
            escreva("Lista de Reservas\n ")
                para(inteiro i=0; i < 20; i++){
                posicao= i+1
                escreva(vetor[i], " ")
                se(vetor[i]!=0){
                	contadorQuarto++
                }
                }
                escreva("\nNúmero de quartos disponíveis: ", (20-contadorQuarto),"\nNúmero de quartos ocupados: ", contadorQuarto)
                u.aguarde(3000)
                escreva("\n")
     }
                  

    
	funcao faturamento(){
		valorPediatria=contadorPediatria*pediatria
		valorGeral=contadorGeral*geral
		faturamentoInternacao()
		totalHospital=valorTotal1+valorGeral+valorPediatria
		escreva("\n*********************************************************************************************************************************\n")
		escreva(" Quantidade de consultas em pediatria --> ", contadorPediatria, "\n")
		escreva(" Quantidade das demais consultas --> ", contadorGeral, "\n")
		escreva(" Quantidade de internações --> ", totalInternacao, "\n")
		escreva("\n*********************************************************************************************************************************\n")
		escreva(" Valores --> Internação = R$",internacao1," ; Pediatria = R$",pediatria," ; Demais consultas = R$",geral, "\n")
		escreva(" Faturamento --> Total Internação = R$", valorTotal1, "; Total Pediatria = R$", valorPediatria, " ; Total demais consultas = R$", valorGeral, "\n")
		escreva(" Total Geral = R$", totalHospital)
		escreva("\n*********************************************************************************************************************************\n")
		u.aguarde(3000)
		menu()		
	}


	funcao faturamentoInternacao(){
		para(inteiro i=0;i<20;i++){
		totalInternacao += vetor[i]
		valorTotal1=totalInternacao*internacao1
		
		}
	}
	funcao internacao(){
            limpa()
               para(inteiro i=0; i < 20; i++){
               escreva("\nEscolha o nº do quarto de 1 a 20:\n ")
             	leia(posicao)
            	limpa()
            	se(posicao<=0 ou posicao>20){
                escreva("\nQuarto Inexistente\n")

            	}
             	senao{
               i= posicao-1


                se(vetor[i]==1){
                     escreva("\nQuarto ocupado, escolha outro:\n ")
                }
                senao{
                     vetor[i]=1

                }
               escreva("deseja continuar? S/s ou N/n: ")
			leia(opcao1)
				se(opcao1=='N' ou opcao1=='n'){
				limpa()
				pare
			}
			escreva("\n")
			
			
             }
           }
	}	
} 


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3686; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 11, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */