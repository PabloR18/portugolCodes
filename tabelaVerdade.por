programa
{
	
	funcao inicio()
	{
		logico valorVerdadeiro, valorFalso, tabelaVerdade
		valorVerdadeiro = falso
		valorFalso = verdadeiro

		// CONJUNÇÃO = OU
		tabelaVerdade = valorVerdadeiro ou valorFalso
		escreva("Na tabela verdade, um valor ", valorVerdadeiro,  " ou um valor ",valorFalso , " é: \t", tabelaVerdade, "\n")
		escreva("\nNa conjunção, para o resultado ser falso, as sentenças devem ser ambas falsas\n")
		escreva("-----------------------------------------------------------------------------" , "\n")
		
		// DISJUNÇÃO = E 
		tabelaVerdade = valorVerdadeiro e valorFalso
		escreva("Na tabela verdade um valor Verdadeiro e um valor Falso resulta em ", tabelaVerdade, "\n")
		escreva("Na disjunção para ser verdadeiro as sentenças devem ser, ambas verdadeira")                                                                                  
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 141; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */