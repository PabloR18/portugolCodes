programa
{
	inclua biblioteca Matematica
	funcao inicio()
	{
	   real kmTotal
        real autonomiaCarro
        real custoCombustivel
        real totalLitros

        escreva("Informe a quantidade que será Percorrida em Km: ")
        leia(kmTotal)
        
        escreva("Informe a Autonomia do Veículo: ")
        leia(autonomiaCarro)
        
        escreva("Informe o Valor Médio do combustível/L: ")
        leia(custoCombustivel)
        
        totalLitros = kmTotal/autonomiaCarro

        custoCombustivel = totalLitros*custoCombustivel

        totalLitros = Matematica.arredondar(totalLitros, 2)
	   custoCombustivel = Matematica.arredondar(custoCombustivel, 2)

        escreva("Custo em Litros: ", totalLitros, "\n")
        
        escreva("Custo em R$ de Combustível: ", custoCombustivel, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 829; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */