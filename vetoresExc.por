programa
{
	
	funcao inicio()
	{
		real notas[4]
		cadeia titulos[4]

		titulos[0]= "Primeira Nota"
		titulos[1]= "Segunda Nota"
		titulos[2]= "Terceira Nota"
		titulos[3]= "Quarta Nota"

		escreva("Informe a Nota 1: ")
		leia(notas[0])

		escreva("Informe a Nota 2 ")
		leia(notas[1])

		escreva("Informe a Nota 3 ")
		leia(notas[2])

		escreva("Informe a Nota 4 ")
		leia(notas[3])

		limpa()

		escreva("\nA ", titulos[0], " é: ", notas[0])
		escreva("\nA ", titulos[1], " é: ", notas[1])
		escreva("\nA ", titulos[2], " é: ", notas[2])
		escreva("\nA ", titulos[3], " é: ", notas[3])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 399; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */