programa
{
	funcao real salarioB(real horasTrab, real salarioHora, real n_dependentes){
		retorne (horasTrab * salarioHora)+(50*n_dependentes)
	}
	funcao real calcInss(real salarioBruto, real descInss){
		se(salarioBruto <= 1000){
			descInss = salarioBruto * 8.5 / 100
		}
		senao se(salarioBruto > 1000){
			descInss = salarioBruto * 9 / 100
		}
		retorne descInss
	}
	funcao real descIr(real salarioBruto, real impostoRenda){
		se (salarioBruto > 1000){
			impostoRenda = salarioBruto * 7 / 100
		}
		senao se(salarioBruto > 500 e salarioBruto <= 1000){
			impostoRenda = salarioBruto * 5 / 100
		}
		senao se(salarioBruto <= 500){
			impostoRenda = salarioBruto * 0
		}
		retorne impostoRenda
	}
	funcao real calcSalarioL(real salarioBruto, real inss, real impostoRenda){
		real salarioX
		
	     salarioX = (salarioBruto - inss) - impostoRenda
		retorne salarioX
	}
	funcao real salarioSemDepend(real salario_Hora, real hora_Trabalhada){
		retorne hora_Trabalhada * salario_Hora
	}
	funcao inicio()
	{
		cadeia nomeFuncionario
		real horaTrabalhada, salarioH, salarioBruto, salarioLiquido, salarioSemDep
		real quantDependentes, inss, descInss=0.0, descImpostoRenda=0.0, impostoRenda=0.0

		escreva("Informe o Nome do Funcionario: ")
		leia(nomeFuncionario)
		
		escreva("Informe as Horas Trabalhadas: ")
		leia(horaTrabalhada)
		
		escreva("Informe o Salário/H: ")
		leia(salarioH)
		
		escreva("Informe a quantidade de Dependentes: ")
		leia(quantDependentes)
		limpa()

		salarioBruto = salarioB(horaTrabalhada, salarioH, quantDependentes)
		inss = calcInss(salarioBruto, descInss)
		descImpostoRenda = descIr(salarioBruto, impostoRenda)
		salarioLiquido = calcSalarioL(salarioBruto, impostoRenda, inss)
		salarioSemDep = salarioSemDepend(salarioH, horaTrabalhada)

		escreva("Nome do Funcionário: ", nomeFuncionario)
		escreva("\nHoras Trabalhadas: ", horaTrabalhada)
		escreva("\nSalário Hora: ", salarioH)
		escreva("\nDependentes: ", quantDependentes)
		escreva("\nSalário: ", salarioSemDep)
		escreva("\nAdicional Dependentes: ", 50*quantDependentes)
		escreva("\nSalário Bruto: ", salarioBruto)
		escreva("\nDesconto INSS: ", inss)
		escreva("\nDesconto IR: ", descImpostoRenda)
		escreva("\nSalário Liquido: ", salarioLiquido)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1715; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */