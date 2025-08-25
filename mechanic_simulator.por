programa
{
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	cadeia carros_comuns[14] = {"Volkswagen Gol", "Chevrolet Onix", "Fiat Palio", "Ford Ka", "Renault Sandero", "Hyundai HB20", "Volkswagen Fox", "Fiat Uno", "Chevrolet Celta", "Volkswagen Voyage", "Fiat Siena", "Ford Fiesta", "Honda Fit", "Fiat Mob"}
	cadeia carros_raros[5] = {"Honda Civic", "Toyota Hilux", "Fiat Titano", "Toyota Corolla", "Ford Ranger"}
	cadeia carros_ultra_raros[3] = {"Chevrolet Camaro", "Ford Mustang", "Porsche 911"}
	cadeia carros_boss[2] = {"Marea", "Peugeot 206"}
	cadeia nomes_clientes[20] = {"Maria", "José", "Ana", "João", "Antônio", "Francisca", "Carlos", "Paula", "Pedro", "Lucia", "Luiz", "Adriana", "Francisco", "Juliana", "Marcos", "Patrícia", "Fernando", "Aline", "Ricardo", "Sandra"}
	cadeia nome_mecanico, nome_oficina
	inteiro dinheiro = 1000
	cadeia dias[5] = {"Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira"}
	
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
		cadeia continuar
		leia(escolhas)

		escolha(escolhas){
			caso 1: 
			limpa()
			
			escreva("informe o nome do mecânico\n")
			leia(nome_mecanico)
			escreva("informe o nome da oficina mecânica\n")
			leia(nome_oficina)
			limpa()
			
			
			//introduçao
			escreva("Você (", nome_mecanico, ") acaba de abrir sua própria oficina mecânica (",nome_oficina, ") com apenas R$1000 no bolso e uma reputação a construir.\n\n")
			escreva("Durante o dia, uma fila de carros com problemas variados vai aparecer na sua porta — e cabe a você decidir como lidar com cada um.\n\n")
			escreva("Você tem duas formas de consertar os veículos:\n\n")
			escreva("Modo Profissional\n\n")
			escreva("- Gasta mais tempo\n\n")
			escreva("- Menor chance do cliente voltar reclamando\n\n")
			escreva("- Mais confiável, mas pode atrasar o atendimento de outros carros\n\n")
			escreva("Modo Gambiarra\n\n")
			escreva("- Rápido e barato\n\n")
			escreva("- Alta chance do carro retornar com o mesmo problema\n\n")
			escreva("- Mesmo lucro, mas risco de prejuízo se o cliente voltar\n\n")
			escreva("Se um carro retornar, você terá que:\n\n")
			escreva("- Devolver o valor do serviço\n\n")
			escreva("- Pagar uma compensação ao cliente insatisfeito\n\n")
			escreva("Cuidado com o saldo!\n\n")
			escreva("Se terminar o dia com o caixa negativo, sua oficina fecha as portas instantaneamente.\n\n")
			escreva("Agora, mãos à graxa. Cada decisão conta — será que você consegue equilibrar velocidade, qualidade e lucro sem afundar no prejuízo?\n\n")
			escreva("aperte [enter] para proseguir ")
			leia(continuar)
			enquanto(continuar != ""){
				escreva("\ntecla presionada errada aperte [enter] ")
				leia(continuar) 
			}
			limpa()
			
			//passo a passo do boss
			escreva("Como resolver o problema de bater bielas de um carro.\n\n")
			escreva("1)Remover o motor do carro\n\n")
			escreva("Desconectar bateria, chicote elétrico, mangueiras e suportes.\n\n")
			escreva("2)Desmontar periféricos do motor.\n\n")
			escreva("Tirar alternador, compressor do ar-condicionado, bomba d’água, correia dentada/corrente.\n\n")
			escreva("3)Retirar o cabeçote.\n\n")
			escreva("Tirar tampa de válvulas, comandos, coletor de admissão e escape.\n\n")
			escreva("4)Remover o cárter.\n\n")
			escreva("Virar o motor de cabeça pra baixo e tirar todos os parafusos do cárter (parte de baixo).\n\n")
			escreva("5)Soltar bomba de óleo.\n\n")
			escreva("6)Desmontar o vira-brequim.\n\n")
			escreva("Tirar capas de mancais e bielas.\n\n")
			escreva("Verificar folgas, trincas e marcas no eixo.\n\n")
			escreva("7)Remover pistões e bielas.\n\n")
			escreva("Tirar pistões com bielas pelos cilindros.\n\n")
			escreva("Separar e identificar cada conjunto.\n\n")
			escreva("8)retificar o bloco, trocar bielas, pistões e o vira-brequim.\n\n")
			escreva("9)Montar tudo de volta na ordem inversa\n\n")
			escreva("Vira-brequim → pistões → bomba de óleo → cárter → cabeçote → periféricos → motor no carro.\n\n")
			escreva("aperte [enter] para proseguir ")
			leia(continuar)
			enquanto(continuar != ""){
				escreva("\ntecla presionada errada aperte [enter] ")
				leia(continuar) 
			}
			limpa()
			
			
		}
	}
}
