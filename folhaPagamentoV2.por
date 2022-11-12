programa
{
	inclua biblioteca Matematica
	funcao real salario_Bruto(real setor, real horasExtras, real n_dependentes){
		retorne (setor + horasExtras)+(50*n_dependentes)
	}
	funcao real calcInss(real salarioBruto, real descInss){
		se(salarioBruto <= 1250){
			descInss = salarioBruto * 8.5 / 100
		}
		senao se(salarioBruto > 1250){
			descInss = salarioBruto * 9 / 100
		}
		retorne descInss
	}
	funcao real descIr(real salarioBruto, real impostoRenda){
		se (salarioBruto > 2000){
			impostoRenda = salarioBruto * 7 / 100
		}
		senao se(salarioBruto > 1250 e salarioBruto <= 2000){
			impostoRenda = salarioBruto * 5 / 100
		}
		senao se(salarioBruto <= 1250){
			impostoRenda = salarioBruto *0
		}
		retorne impostoRenda
	}
	funcao real calc_Salario_Liquido(real salarioBruto, real inss, real impostoRenda){
		real salarioLiq
		
	     salarioLiq = salarioBruto - inss - impostoRenda
		retorne salarioLiq
	}
	funcao real horas_Extras(real horasTrabalhadas, real horaMes, real valorSetor){
		real valorHorasExtras=0.0, horasExtras=0.0
		se(horasTrabalhadas>=horaMes){
			horasExtras = horasTrabalhadas-horaMes
			valorHorasExtras = (valorSetor/220) * horasExtras
			
			retorne valorHorasExtras
		}
		senao{
			retorne valorHorasExtras
		}
		
	}
	funcao inicio()
	{
		cadeia nomeFuncionario, setor="a"
		real horaTrabalhada, salarioH, salarioBruto, salarioLiq, salarioSemDep, salarioSetor=0.0
		real inss, descInss=0.0, descImpostoRenda=0.0, impostoRenda=0.0, horasExtras=0.0
		const inteiro horaMes=220
		inteiro opcao, quantDependentes

		escreva("Informe o Nome do Funcionario: ")
		leia(nomeFuncionario)
		limpa()

		escreva("Informe o Setor em que você Atua: 1- Administrativo, 2- Comercial, 3- Financeiro, 4- TI, 5- Logistica e Transporte, 6- Operacional\t")
		leia(opcao)
		limpa()
		
		se(opcao == 1){
			salarioSetor = 2890.50
			setor = "Administrativo"
		}
			senao se(opcao == 2){
				salarioSetor = 3110.90
				setor = "Comercial"
			}
			senao se(opcao == 3){
				salarioSetor = 3000.00
				setor = "Financeiro"
			}
			senao se(opcao == 4){
				salarioSetor = 3400.50
				setor = "TI"
			}
			senao se(opcao == 5){
				salarioSetor = 2700.50
				setor = "Logistica e Transporte"
			}
			senao se(opcao == 6){
				salarioSetor = 2470.40
				setor = "Operacional"
			}
		
		escreva("Informe as Horas Trabalhadas no Mês: ")
		leia(horaTrabalhada)
		limpa()
		
		escreva("Informe a quantidade de Dependentes: ")
		leia(quantDependentes)
		limpa()

		salarioBruto = salario_Bruto(salarioSetor, horasExtras, quantDependentes)
		horasExtras = horas_Extras(horaTrabalhada, horaMes, salarioSetor)
		inss = calcInss(salarioBruto, descInss)
		descImpostoRenda = descIr(salarioBruto, impostoRenda)
		salarioLiq = calc_Salario_Liquido(salarioBruto, inss, descImpostoRenda)
		salarioH = salarioBruto / 220

		salarioH = Matematica.arredondar(salarioH, 2)
		inss = Matematica.arredondar(inss, 2)
		descImpostoRenda = Matematica.arredondar(descImpostoRenda, 2)
		salarioLiq = Matematica.arredondar(salarioLiq, 2)

		escreva("Nome do Funcionário: ", nomeFuncionario)
		escreva("\nSetor do Funcionário: ", setor)
		escreva("\nSalário: ", salarioSetor)
		escreva("\nHoras Trabalhadas: ", horaMes)
		escreva("\nSalário Hora: ", salarioH)
		escreva("\nDependentes: ", quantDependentes)
		escreva("\nAdicional Dependentes: ", 50*quantDependentes)
		escreva("\nSalário Bruto: ", salarioBruto)
		escreva("\nDesconto INSS: ", inss)
		escreva("\nDesconto IR: ", descImpostoRenda)
		escreva("\nSalário Liquido: ", salarioLiq)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2517; 
 * @DOBRAMENTO-CODIGO = [3, 6, 15, 27, 33, 62, 70, 74, 78, 82];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */