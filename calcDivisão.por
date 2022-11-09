programa
{
	funcao real calcDividir(real valTotal, real quantPessoas){
		retorne valTotal / quantPessoas
	}
	funcao real valorGorjeta(real conta, real gorjeta){
		real total
		

		se (gorjeta == 1){
			gorjeta = 0.1
		}
		senao se (gorjeta == 2){
			gorjeta = 0.12
		}
		senao se (gorjeta == 3){
			gorjeta = 0.15
		}
		total = conta*gorjeta
		retorne total
	}
	
	funcao inicio()
	{
		inteiro qtPessoas, porcentagem
		real valorTotal, totalConta, valorPessoa

		escreva("Informe o valor Total da Conta: ")
		leia(valorTotal)
		limpa()

		totalConta = valorTotal

		escreva("Informe qual será a gorjeta, 1 - 10%, 2 - 12%, 3 - 15% \t")
		leia(porcentagem)
		limpa()
			
		escreva("Informe a Quantidade de Pessoas: ")
		leia(qtPessoas)
		limpa()

		porcentagem = valorGorjeta(valorTotal, porcentagem)
		valorPessoa = valorTotal + porcentagem / qtPessoas
		
		escreva("===========NOTA===========")
		escreva("\nTotal da Conta: \t", totalConta)
		escreva("\nTotal em gorjeta:\tR$", porcentagem)
		escreva("\nTotal de Pessoas: \t", qtPessoas, " Amigos")
		escreva("\nCada amigo deve pagar:\t", valorPessoa)

		

		

	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 855; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */