programa
{
	cadeia carros_comuns[14] = {"Volkswagen Gol", "Chevrolet Onix", "Fiat Palio", "Ford Ka", "Renault Sandero", "Hyundai HB20", "Volkswagen Fox", "Fiat Uno", "Chevrolet Celta", "Volkswagen Voyage", "Fiat Siena", "Ford Fiesta", "Honda Fit", "Fiat Mob"}
	cadeia carros_raros[5] = {"Honda Civic", "Toyota Hilux", "Fiat Titano", "Toyota Corolla", "Ford Ranger"}
	cadeia carros_ultra_raros[5] = {"Chevrolet Camaro", "Ford Mustang", "Porsche 911", "Nissan GT-R", "Mclaren Senna"}
	cadeia nomes_clientes[20] = {"Maria", "José", "Ana", "João", "Antônio", "Francisca", "Carlos", "Paula", "Pedro", "Lucia", "Luiz", "Adriana", "Francisco", "Juliana", "Marcos", "Patrícia", "Fernando", "Aline", "Ricardo", "Sandra"}
	cadeia nome_mecanico
	funcao inicio()
	{
		
		escreva("*                    )             )  (              (    (       *            (                         )   (     \n")
		escreva(" (  `           (    ( /(   (      ( /(  )\\ )   (       )\\ ) )\\ )  (  `           )\\ )    (       *   )  ( /(   )\\ )  \n")
		escreva(" )\\))(   (      )\\   )\\())  )\\     )\\())(()/(   )\\     (()/((()/(  )\\))(      (  (()/(    )\\    ` )  /(  )\\()) (()/(  \n")
		escreva("((_)()\\  )\\   (((_) ((_)\\((((_)(  ((_)\\  /(_))(((_)     /(_))/(_))((_)()\\     )\\  /(_))((((_)(   ( )(_))((_)\\   /(_)) \n")
		escreva("(_()((_)((_)  )\\___  _((_))\\ _ )\\  _((_)(_))  )\\___    (_)) (_))  (_()((_) _ ((_)(_))   )\\ _ )\\ (_(_())   ((_) (_))   \n")
		escreva("|  \\/  || __|((/ __|| || |(_)_\\(_)| \\| ||_ _|((/ __|   / __||_ _| |  \\/  || | | || |    (_)_\\(_)|_   _|  / _ \\ | _ \\  \n")
		escreva("| |\\/| || _|  | (__ | __ | / _ \\  | .` | | |  | (__    \\__ \\ | |  | |\\/| || |_| || |__   / _ \\    | |   | (_) ||   /  \n")
		escreva("|_|  |_||___|  \\___||_||_|/_/ \\_\\ |_|\\_||___|  \\___|   |___/|___| |_|  |_| \\___/ |____| /_/ \\_\\   |_|    \\___/ |_|_\\  \n") 
		escreva("                                                                     (\n")
		escreva("         )                                                 )        )\\ )                \n")
		escreva("      ( /(          (        (  (      )  (             ( /(       (()/(    )  (   (    \n")
		escreva("      )\\())         )\\   (   )\\))(  ( /(  )(            )(_))       /(_))( /(  )\\  )(   \n")
		escreva(" __  ((_)\\   __    ((_)  )\\ ((_))\\  )(_))(()\\      __  ((_)    __  (_))  )(_))((_)(()\\  \n")
		escreva("| _|  / (_) |_ |  _ | | ((_) (()(_)((_)_  ((_)    | _| |_  )  |_ | / __|((_)_  (_) ((_) \n")
		escreva("| |   | |    | | | || |/ _ \\/ _` | / _` || '_|    | |   / /    | | \\__ \\/ _` | | || '_| \n")
		escreva("| |   |_|    | |  \\__/ \\___/\\__, | \\__,_||_|      | |  /___|   | | |___/\\__,_| |_||_|   \n")
		escreva("|__|        |__|            |___/                 |__|        |__|                      \n")
		
		inteiro escolhas, dia
		leia(escolhas)

		escolha(escolhas){
			caso 1: 
			limpa()
			escreva("Qual será o nome do mecanico: ")
			leia(nome_mecanico)
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2979; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */