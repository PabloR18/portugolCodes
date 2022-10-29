programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real kmTotal, autonomia, despesaCombustivel, litroCombustivel, precoPecas=0, custoTotal=0, valorHospedagem=0, valorAlimento=0
		real horaTrabalho
		inteiro pecaReposicao, alimento, hospedagem
		cadeia qualPeca="a"
		logico memoria = falso, HD = falso, processador = falso, fonte = falso
		
		escreva("Informe quantos KMs será percorrido:  ")
		leia(kmTotal)

		escreva("Qual a autonomia do seu Veiculo? :  ")
		leia(autonomia)

		
		litroCombustivel = kmTotal / autonomia
		
		despesaCombustivel = kmTotal * 4.90

		despesaCombustivel = Matematica.arredondar(despesaCombustivel, 2)
		litroCombustivel = Matematica.arredondar(litroCombustivel, 2)

		limpa()

		// PRECIFICAÇÃO HORA

		escreva("Quantas horas de trabalho previstas serão necessarias?:  ")
		leia(horaTrabalho)

		horaTrabalho = horaTrabalho * 35.00

		limpa()

		// UTILIZAÇÃO DE PEÇAS

		escreva("Você utilizará alguma peça de Reposição? 1 - Sim, 2 - Não \t")
		leia(pecaReposicao)

		escolha(pecaReposicao){
			caso 1:
				escreva("Ok, qual Peça? 1 - Fonte, 2 - Processador, 3 - Memória, 4 - HD \t")
				leia(qualPeca)

				se(qualPeca == "1"){
					precoPecas = precoPecas + 140.00
				}
				senao se(qualPeca == "2"){
					precoPecas = precoPecas + 850.00
				}
				senao se(qualPeca == "3"){
					precoPecas = precoPecas + 190.00
				}
				senao se(qualPeca == "4"){
					precoPecas = precoPecas + 280.00
				}

				limpa()
				
		}

		// ALIMENTAÇÃO

		escreva("Vai haver alguma alimentação? 1 - Sim, 2 - Não \t")
		leia(alimento)

		escolha(alimento){
			caso 1: 
				escreva("Informe um Valor previsto:  ")
				leia(valorAlimento)
		}

		// HOSPEDAGEM

		escreva("Vai haver Hospedagem? 1 - Sim, 2 - Não \t")
		leia(hospedagem)

		escolha(hospedagem){
			caso 1:
				escreva("Informe um Valor previsto:  ")
				leia(valorHospedagem)
		}

		limpa()

		escreva("=========================================== \n")
		escreva(" --- DETALHAMENTO --- \n")
		escreva("KM: ",kmTotal, ", Despesa de: ", despesaCombustivel, "\n")
		escreva("Preço total Hrs: ", horaTrabalho, "\n")
		escreva("Peças de Reposição: " , precoPecas, "\n")
		escreva("Alimentação: ", valorAlimento, "\n")
		escreva("Hospedagem: ", valorHospedagem, "\n")

		custoTotal = horaTrabalho + precoPecas + valorAlimento + despesaCombustivel + valorHospedagem
		
		escreva("Total: ", custoTotal, "\n")

		custoTotal = Matematica.arredondar(custoTotal, 2)

		escreva("=========================================== \n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 355; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */