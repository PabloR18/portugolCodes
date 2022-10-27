programa
{
	inclua biblioteca Matematica
	
	
	funcao inicio()
	{
		real valorTotal = 0.0
		caracter tamanhoPizza='A', pepperoni='a', queijoExtra='e'
		cadeia bebida="", nome, saborPizza="", qualBebida
		inteiro opcaoPedido, opcaoBebida=0

		escreva("Qual é o seu Nome? :  ")
		leia(nome)

		escreva("Olá "    , nome,  ", Sou seu assistente virtual e vou te auxiliar por aqui.\n")

		escreva("Escolha uma das Opções: 1 - Fazer pedido, 2 - Sair:  ")
		leia(opcaoPedido)
		limpa()

		escolha(opcaoPedido){
			caso 1:
				escreva("Informe o tamanho da Pizza (P/M/G/F):  ")
				leia(tamanhoPizza)

			se (tamanhoPizza == 'P' ou tamanhoPizza == 'p') {
			valorTotal = 14.50
		} senao se (tamanhoPizza == 'M' ou tamanhoPizza == 'm') {
			valorTotal = 18.50
		} senao se (tamanhoPizza == 'G' ou tamanhoPizza == 'g') {
			valorTotal = 24.50
		} senao se (tamanhoPizza == 'F' ou tamanhoPizza == 'f') {
			valorTotal = 35.50
		}

escreva("Informe o sabor da Pizza, 1 - 4queijos, 2 - Calabresa, 3 - Frango, 4 - Portuguesa \t")
		leia(saborPizza)
		limpa()

		se (saborPizza == "1"){
			saborPizza = "4queijos"
		}
		senao se (saborPizza == "2"){
			saborPizza = "Calabresa"
		}
		senao se (saborPizza == "3"){
			saborPizza = "Frango"
		}
		senao se (saborPizza == "4"){
			saborPizza = "Portuguesa"
		}	
	
		escreva("Deseja adicionar Pepperoni? (S/N) : ")
		leia(pepperoni)

		se ((pepperoni == 'S' ou pepperoni == 's') e valorTotal == 14.50){
			valorTotal = valorTotal + 2.0
		}senao se ((pepperoni == 'S') ou pepperoni == 's') {
			valorTotal = valorTotal + 3.0
		}

		escreva("Deseja adicionar Queijo Extra? (S/N) : ")
		leia(queijoExtra)

		se ((queijoExtra == 'S') ou queijoExtra == 's') {
			valorTotal = valorTotal + 1.0
		}

		escreva("Informe se Deseja Bebida, 1 - Sim, 2 - Não \t")
		leia(opcaoBebida)

		escolha(opcaoBebida){
			caso 1:
				escreva("1 - Agúa, 2 - Refrigerante, 3 - Suco \t")
				leia(qualBebida)

				se (qualBebida == "1"){
					valorTotal = valorTotal + 1.50
					leia(bebida)
					
				}
				senao se (qualBebida == "2"){
					valorTotal = valorTotal + 3.00
					leia(bebida)
				}
				senao se (qualBebida == "3"){
					valorTotal = valorTotal + 3.50
					leia(bebida)
				}
				

			
		}

		caso 2:
			escreva("Obrigado por Utilizar nosso Dellivery!!")
			pare
		
		}
		
		escreva("Prontinho, segue o detalhe do seu pedido: \n")
		escreva("---------------------------------------------\n")
		escreva("Uma pizza sabor:\t", saborPizza, "\n")
		escreva("Tamanho:\t\t", tamanhoPizza, "\n")
		se (opcaoBebida == 1){
			escreva("Bebida:\t\t ", bebida, "\n")
		}
		escreva("O valor total do pedido foi de: ", valorTotal, "\n")
			

		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2642; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */