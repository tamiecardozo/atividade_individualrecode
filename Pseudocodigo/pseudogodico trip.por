programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
 
		
	funcao inicio()
	{
		exibir_menu()
	}
	inteiro opcao_escolhida

    cadeia clientes[9]
    cadeia destinos[9]

    inteiro contador_clientes = 0
    inteiro contador_destinos = 0

    funcao cadastrar_cliente(){
    	  escreva("\n===CADASTRO DE CLIENTE===")
       cadeia nome
       cadeia cpf
       cadeia endereco
       escreva("\nNOME: ")
       leia(nome)
       escreva("\nCPF: ")
       leia(cpf)
       escreva("\nENDEREÇO: ")
       leia(endereco)
       se(contador_clientes >6){
       	contador_clientes=0 
       	}
       	clientes[contador_clientes] = nome
       	clientes[contador_clientes + 1] = cpf
       	clientes[contador_clientes + 2] = endereco
       	escreva("\nCLIENTE " + Texto.caixa_alta(nome) + " CADASTRADO COM SUCESSO!\n")
       	contador_clientes = contador_clientes + 3
       	exibir_menu()
       	}

	
	funcao cadastrar_destino(){

 	 escreva("\n===CADASTRO DE DESTINOS===")
 	 cadeia pais
 	 cadeia estado
 	 cadeia cidade
 	 escreva("\nPAÍS: ")
 	 leia(pais)
 	 escreva("\nESTADO: : ")
 	 leia(estado)
 	 escreva("\nCIDADE: ")
 	 leia(cidade)
 	 destinos[contador_destinos] = pais
 	 destinos[contador_destinos + 1] = estado
 	 destinos[contador_destinos + 2] = cidade
 	 escreva("\nDESTINO " + Texto.caixa_alta(cidade) + " - " + Texto.caixa_alta(estado) + " CADASTRADO COM SUCESSO!\n")
 	 contador_destinos = contador_destinos + 3
	 exibir_menu()
}

	
	funcao listar_clientes(){
		inteiro qtd_clientes = Util.numero_elementos(clientes)
		inteiro inicio = 0
		escreva("\n===LISTA DE CLIENTES CADASTRADOS===\n")
		enquanto(inicio < qtd_clientes){
			escreva("\n--------------------------------------\n")
			escreva("\nNOME: " +clientes[inicio])
			escreva("\nCPF: " + clientes[inicio+1])
			escreva("\nENDEREÇO: " + clientes[inicio+2])
			inicio = inicio + 3
		}
			exibir_menu()
	}



	funcao listar_destinos(){
		inteiro qtd_destinos = Util.numero_elementos(destinos)
		inteiro inicio = 0
		escreva("\n===LISTA DE DESTINOS CADASTRADOS===\n")
		enquanto(inicio < qtd_destinos){
			escreva("\n--------------------------------------\n")
			escreva("\nPAÍS: " + destinos[inicio])
			escreva("\nESTADO: " + destinos[inicio+1])
			escreva("\nCIDADE: " + destinos[inicio+2])
			inicio = inicio + 3
		}
			exibir_menu()	
	}


	funcao encerrar(){
        escreva("PROGRAMA ENCERRADO PELO USUARIO")
    }

	funcao escolher_fluxo(inteiro opcao){
	   se(opcao==1){
            cadastrar_cliente()
        }senao se(opcao==2){
            cadastrar_destino()
        }senao se(opcao==3){
            listar_clientes()
        }senao se(opcao==4){
            listar_destinos()
        }senao se(opcao==0){
            encerrar()
        }
        senao {
            escreva("por favor digite uma opção válida")
            exibir_menu()

        }
	}


	funcao exibir_menu(){
     	escreva("Bem-vindos a Trip\n")
		escreva("\n*******MENU TRIP********\n")
		escreva("\n1 - CADASTRAR CLIENTE")
		escreva("\n2 - CADASTRAR DESTINO")
		escreva("\n3 - CONSULTAR TODOS OS CLIENTES CADASTRADOS")
		escreva("\n4 - CONSULTAR TODOS OS DESTINOS CADASTRADOS")
		escreva("\n0 - SAIR\n")
		escreva("DIGITE SUA OPÇÃO:")
		leia(opcao_escolhida)
		escolher_fluxo(opcao_escolhida)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */