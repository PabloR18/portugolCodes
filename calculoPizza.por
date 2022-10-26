programa
{
	inclua biblioteca Matematica
	
	
	funcao inicio()
	{
		real valorTotal = 0.0
		caracter tamanhoPizza, pepperoni, queijoExtra

		escreva("Informe o tamanho da Pizza: ")
		leia(tamanhoPizza)

		se (tamanhoPizza == 'P' ou tamanhoPizza == 'p') {
			valorTotal = 15.00
		} senao se (tamanhoPizza == 'M' ou tamanhoPizza == 'm') {
			valorTotal = 20.00
		} senao se (tamanhoPizza == 'G' ou tamanhoPizza == 'g') {
			valorTotal = 25.00
		}

		escreva("Deseja adicionar Pepperoni? : ")
		leia(pepperoni)

		se ((pepperoni == 'S' ou pepperoni == 's') e valorTotal == 15){
			valorTotal = valorTotal + 2.0
		}senao se ((pepperoni == 'S') ou pepperoni == 's') {
			valorTotal = valorTotal + 3.0
		}

		escreva("Deseja adicionar Queijo Extra? : ")
		leia(queijoExtra)

		se ((queijoExtra == 'S') ou queijoExtra == 's') {
			valorTotal = valorTotal + 1.0
		}

		escreva("Tamanho: "   , tamanhoPizza,  ", Pepperoni: "   , pepperoni,  ", Queijo Extra: "   , queijoExtra,  "\nO valor da pizza é: "   , valorTotal, "." )

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1019; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */