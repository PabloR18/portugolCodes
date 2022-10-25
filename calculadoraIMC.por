programa
{
	inclua biblioteca Matematica
	
	funcao inicio ()
	{
		
		real peso, altura, imc

		escreva("Informe o seu Peso/KG: ")
		leia(peso)
	
		escreva("Informe sua altura: ")
		leia(altura)
		
		imc = peso / (altura*altura)

		imc = Matematica.arredondar(imc, 2)
		
		escreva("Seu IMC é: ", imc, "\n")
		
		se (imc < 18.5) {
			escreva("Você está abaixo do Peso") 
		} senao se (imc >= 18.5 e imc <= 24.9) {
			escreva("Você esta no Peso Ideal")
		} senao se (imc >= 25 e imc <= 29.9) {
			escreva("Você está com Sobrepeso")
		} senao se (imc >= 30 e imc <= 34.9) {
			escreva("Você está com Obesidade Nível 1")
		} senao se (imc >= 35 e imc <= 39.9) {
			escreva("Você está com Obesidade Nível 2")
		} senao se (imc >= 40) {
			escreva("Cuidado, Você está com Obesidade Nível 3")
		}
		
		
		
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 788; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */