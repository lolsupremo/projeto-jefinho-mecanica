programa
{
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	cadeia carros_boss[2] = {"Marea", "Peugeot 206"}
	cadeia nome_clientes[20] = {"Maria", "José", "Ana", "João", "Antônio", "Francisca", "Carlos", "Paula", "Pedro", "Lucia", "Luiz", "Adriana", "Francisco", "Juliana", "Marcos", "Patrícia", "Fernando", "Aline", "Ricardo", "Sandra"}
	cadeia nome_mecanico, nome_oficina, continuar
	inteiro dinheiro = 1000, escolhas, dia = 1, erros_comuns = 0, erros_raros = 0, erros_ultra = 0, erros_evento = 0, horario = 0
	cadeia cores [10] = {"preto", "branco", "cinza", "cinza santos", "vermelho", "rosa", "azul", "vermelho carmesim", "azul marinho", "verde palmeiras"}
	cadeia dias[5] = {"Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira"}
	cadeia frases_cliente[20] = {"Bom dia, meu carro está fazendo um barulho estranho. Pode dar uma olhada?", "Preciso de um serviço rápido, mas que resolva de vez. Confio no seu trabalho.", "Meu veículo está com dificuldade de ligar. É algo sério?", "Trouxe meu carro porque ouvi falar bem da sua oficina. Espero não me arrepender.", "Olha, não tenho o dia todo. Dá pra resolver isso rápido?", "Já fui em três oficinas e ninguém resolveu. Não me venha com desculpas.", "Se você não conseguir consertar, vou direto pro Procon.", "Quero um serviço barato e imediato. Sem enrolação.","Oi! É minha primeira vez aqui. Espero que você possa me ajudar.", "Não entendo nada de carro, mas ele tá fazendo um som meio... metálico?", "Desculpa incomodar, mas meu carro morreu no meio da rua. Pode ver pra mim?", "Você parece saber o que faz. Só não me cobre um rim, por favor!", "O motor está falhando na ignição. Acho que é a vela ou talvez o sensor de fase.", "Fiz uma análise com scanner e deu erro no módulo. Você trabalha com isso?", "Preciso trocar o fluido de freio e revisar a suspensão. Pode fazer hoje?", "O carro está puxando pra direita. Já verifiquei a calibragem, então deve ser alinhamento.", "Meu carro tá com mais tremedeira que minha sogra no frio. Socorro!", "Se você conseguir fazer esse carro andar, te pago um pastel e um caldo de cana.", "O rádio só toca música triste. Será que é o carro que tá deprimido?", "O carro tá fazendo um som tipo ‘clac-clac-clac’. Isso é normal ou ele tá virando um maracas?"}
	funcao inicio()
	{
		
		escreva("*                    )             )  (              (    (       *            (                         )   (     \n")
		escreva(" (  `           (    ( /(   (      ( /(  )\\ )   (       )\\ ) )\\ )  (  `           )\\ )    (       *   )  ( /(   )\\ )  \n")
		escreva(" )\\))(   (      )\\   )\\())  )\\     )\\())(()/(   )\\     (()/((()/(  )\\))(      (  (()/(    )\\    ` )  /(  )\\()) (()/(  \n")
		escreva("((_)()\\  )\\   (((_) ((_)\\((((_)(  ((_)\\  /(_))(((_)     /(_))/(_))((_)()\\    )\\  /(_))((((_)(   ( )(_))((_)\\   /(_)) \n")
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
		leia(escolhas)

		escolha(escolhas){
			caso 1: 
			
			introducao()
			
			limpa()

			tutorial_boss()

			enquanto(dia > 5)
			erros_comuns = 0
			erros_evento = 0
			erros_raros = 0
			erros_ultra = 0
			
			sorteio_carro()

			
			
		}
	}
	funcao introducao(){
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
	}
	funcao tutorial_boss(){
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
	funcao sorteio_carro(){
		logico loop = verdadeiro
		inteiro sorteio = u.sorteia(29, 30)
		se(sorteio == 30){
			evento_especial()
		} senao {
			sorteio = u.sorteia(1, 100)
			se(sorteio <= 80){
				sorteio = u.sorteia(1, 13)
				escolha(sorteio){
					caso 1:
					gol() 
					pare
					
					caso 2:
					voyage()
					pare
	
					caso 3:
					fox() 
					pare
				
					caso 4:
					fiat_uno() 
					pare

					caso 5:
					onix() 
					pare

					caso 6:
					palio() 
					pare

					caso 7:
					ford_ka() 
					pare

					caso 8:
					hb20() 
					pare
				
					caso 9:
					sandeiro() 
					pare

					caso 10:
					celta() 
					pare

					caso 11:
					fiesta() 
					pare

					caso 12:
					fit()
					pare

					caso 13:
					siena()
					pare
				}
				enquanto(loop){
						leia(escolhas)
						escolha(escolhas){
							caso 1:
							dinheiro = dinheiro + 100
							horario = horario + 3
							loop = falso
							pare
	
							caso 2:
							dinheiro = dinheiro + 100
							horario++
							sorteio = u.sorteia(1, 3)
							se(sorteio == 3){
								erros_raros++
							}
							loop = falso
							pare

							caso 3: 
							horario++
							loop = falso
							pare

							caso contrario:
							escreva("Informe um comando valido ")
							pare
						}
					}
			}senao se(sorteio <= 99){
					sorteio = u.sorteia(1, 5)
					escolha(sorteio){
						caso 1:
						compass()
						pare

						caso 2:
						ranger()
						pare

						caso 3:
						Hilux()
						pare

						caso 4:
						civic()
						pare

						caso 5:
						corolla()
						pare
					}
					enquanto(loop){
						leia(escolhas)
						escolha(escolhas){
							caso 1:
							dinheiro = dinheiro + 150
							horario = horario + 3
							loop = falso
							pare
	
							caso 2:
							dinheiro = dinheiro + 150
							horario++
							sorteio = u.sorteia(1, 3)
							se(sorteio == 3){
								erros_raros++
							}
							loop = falso
							pare

							caso 3: 
							horario++
							loop = falso
							pare

							caso contrario:
							escreva("Informe um comando valido ")
							pare
						}
					}
				}senao{
					sorteio = u.sorteia(1, 3)
					escolha(sorteio){
						caso 1:
						mustang()
						pare

						caso 2:
						camaro()
						pare

						caso 3:
						porshe911()
						pare
					}
					enquanto(loop){
						leia(escolhas)
						escolha(escolhas){
							caso 1:
							dinheiro = dinheiro + 200
							horario = horario + 3
							loop = falso
							pare
	
							caso 2:
							dinheiro = dinheiro + 200
							horario++
							sorteio = u.sorteia(1, 3)
							se(sorteio == 3){
								erros_ultra++
							}
							loop = falso
								pare

							caso 3: 
							horario++
							loop = falso
							pare

							caso contrario:
							escreva("Informe um comando valido ")
							pare
						}
					}
				}
			}	
	}
	funcao camaro(){
          cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Camaro da cor ", cores[u.sorteia(0, 9)], "\n\n")

  		escreva("                                                        ....,,,,,***///((/((/(/(\n")
		escreva("                                            .   ..... .(*,,,//**,*,,***,******//\n")
		escreva("                               .... ....*//*,   ...,,, *(.#/*.. ,,..,.*&**,*/*//\n")
		escreva("                    ...............*.*..........   ,,,,,...*///((((((/#,,,,,..,,\n")
		escreva("          ..................... ,....          .....,..     ..,/,..###%%****,*,*\n")
		escreva("   .... .................... /,..          ..     .      .. ,/.(((((#%,.,,,*,*/*\n")
		escreva("  . .................//////.*#**......           / ..,...((*,#((/(, . .,*,...,,,\n")
		escreva("................*/***/..,**,,,......   .       .  .  ,(###*...... . *.#..,,.,,,,\n")
		escreva("   .........,#%///(#( ,..      ../  .,**,,,.../((((((/..          ,., ...,,,,,**\n")
		escreva("...........*/(*%#(((/***,,......*****,...**/((((,.        ((.     (%..,.......,,\n")
		escreva("..... .....(.*/*,*,,*,...,,***,.  ....,,,*(#(.       (#/., ,     .  ......,**,,*\n")
		escreva("........... // ,.,,,,,,.......   .....*.     .   ((. ,,            . . ........ \n")
		escreva("...........    .,,,..    %@@/**%.,,..., ,   . .  .             . ...........,...\n")
		escreva("......,..  .,        .         .  .. . ... . *               .................  \n")
		escreva(".....,... .  *,,.            .@,  .*.,/ ,(.                   ................. \n")
		escreva(".........        .....     ...,*.   &, .,               ... ................    \n")
		escreva(" ..........               .....                       ......... .........       \n")
		escreva("............                                  .........................         \n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")			
	}
	funcao fiat_uno(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Fiat Uno ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("********************************************************************************\n")
		escreva("******************************************/*************************************\n")
		escreva("***************************************/****************************************\n")
		escreva("***************************,,,/#%%%&&&@@@@@@@@&&&%&,,#,,&&%((*,,,***************\n")
		escreva("***********************,&(,,,,,,,%%&,,,,,,*##%&%((/,,,,,%,,,,,,,((***..%********\n")
		escreva("********************,%/,,,,,,,,,%%#,/###(*(#,&&,#%,&,,/,,%,,,,,,,#(,,,,. %******\n")
		escreva("***************#*&#@,,.,,(,((/*%%(,,(((((((,,%&(((((,,,,,,(,,%%%%%##,,,,*,.#****\n")
		escreva("************,.., (%#(///***/////((((((((((((#(#####,.,,,,*,&%%%%%%%%%*#*/(/#%.**\n")
		escreva("***.   ./                  /..            /*/        ..*,*..,/..,,,,,,*,,,,,,,,*\n")
		escreva("*    ,((##                                   ##.      .&,/*./(.....,,,,,,,,,,,(/\n")
		escreva("**/*#@@&@@%&,,/,,,,,,,,,,,,,/,,,,*,,,,,***#@%%&&&&****/%%%###(*******,,,,,,,,(..\n")
		escreva("*###@(%&%%&%*,/,,,,,,,,,,,,,(*,,,,,,,,,,#%@@@@@@&@@@@&&@@&&%%////////////////##*\n")
		escreva("**#(&.(,,@&&&///***,********%**********(&@@@&&&@@@@@@@@@@@@&&&&&&&&&&&&&&&&&&&&&\n")
		escreva("***%%@/,/,#&&@&&&&&&&&&&&&&&&%(*,/%&#**%@@&@,,@#&&@@@@@@@@@@@@@@@&,(%/#(*,@&&%%%\n")
		escreva("***(&(%,*,&@&@%**********%@%%%&&&@@@@@@@@&@***%*@@@@@@@@@@@@@@@&&&&&&&&&&&&&&%,,\n")
		escreva("***//&&%&&@@@**************@@@@@@@@,,,,,,&@@*(@**&@@&@&,,,,,,,,@@@@@@@@@@@&@,,,,\n")
		escreva(",,,,,,,,,,,**********//////////((((((///*(&@%@*#%@@&&*,,,,,,,,,,@@@@@@@@@&&*,,,,\n")
		escreva(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*******//(@@@@@@@@@//////////****@@@@@@&(,,,,,,\n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao corolla(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Corolla ", cores[u.sorteia(0, 9)], "\n\n")


		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@(%#(((////**********&@ ****/.///,*@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@/((/////*******,,,,,,,/@.********,//////*&@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@*//********,,,,,,,,,,,,,.@&.**(&&&@&*..////*/(,*@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&@&&%..&@@&@@@@@@@@@&@@@@@*%@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&(*.@&&&&&@@&&%%%%%%&&%&&&&&&&&&&@@@@@@@@@@@\n")
		escreva("@@@@@@@@,@#%..,.(/.#*.  ./%& *#%#./&,@&&&@&&  %&%%%%%%%%%%%%%%%%%%&&%. &&&@@@@@@\n")
		escreva("@@@@@@ @@@/%&&&&&&&&&&&&%@&&@@@%,.*&&&&&&%. .   %%%%%%%%%%%%%%%%%%%(*** &%@@@@@@\n")	
		escreva("@@@@@@,%*.   /@@@@@&     .  #%%%%%#.%%%%&.***/( (%%%%#%%%%%%%%%%%%%.,*(,#%@@@@@@\n")
		escreva("@@@@@@ .                  .   &%%%. *%%% .*(/** *#%%%%#####(((((##( *,.,#&@@@@@@\n")
		escreva("@@@@@@&(.......,***//(((###&%%#*///(%%%%  .,*(% .((//(#%&@@@@@@@*    //#@@@@@@@@\n")
		escreva("@@@@@@@@@@@       (@@@@@@@@&%#(/,..        //*              ..,/(#%&&@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@&%#(/*,,..                     .*(#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")	
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")
		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao celta(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Celta ", cores[u.sorteia(0, 9)], "\n\n")


		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/&%##(/*,,,......%%........... &%#@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@ %##((//*,.***...,.&(..,..., ,****///&&&@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@/#((//*****...*,....%&,,&&%****/,,(((### ,&&&@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@&@@@@@@@@@@@&&&&&%%%%%&&@. .  ./,.,*,*#&&&&&&@@@&&#@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@&%%%%%%%%%%%@&%%%%%%%%%&&&&&&&&&&&&@@@@@@@&&@@@@@@@@@(&@@@@@@@@@@@\n")
		escreva("@@@@@@@@/% .. . .   &@(,,./,/&&&&&@@&&@@&@@@@@@@@@@@@@@@@@@@@@@@@@@&&&%@@@@@@@@\n")
		escreva("@@@@@@@/%/,    . ,@%#*((/**,%@@&&&%       %%%%%%%%%%%%%%%%%%%%%%%%%     &@@@@@@\n")
		escreva("@@@@@@//#(*@*(@/%%%########(//(((* /*. ./  ####((((((((((/#######(.,%#  @@@@@@@\n")
		escreva("@@@@@@@**/#%%&&%%%//%&&&(,**,**/* . .%%&/, (/((((///***/#%#(///// .&%&& @@@@@@@\n")
		escreva("@@@@@@@..          ....,,,...,,*  .#% %%&.        &@@@@@@@@@@@* *..(%%@.@@@@@@@\n")
		escreva("@@@@@@@@@@,,    .  @@@@@@@@@@@@(.,  (##(, #((,  ,**//////((###%%%*..,, @@@@@@@@\n")
		escreva("@@@@@@@@@@&%(*,,,,,*************,, .,* //////(((###%%%&&&&@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")
		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao civic(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Civic ", cores[u.sorteia(0, 9)], "\n\n")
	
		escreva("                                     ./(#&&&&&&&&&&&&&(//                       \n")
		escreva("                            ,,///*********,,,,,,,,,,,,*&#****//,%%              \n")
		escreva("                         *,*****,,,,**,,,,,,,,,,,,,,,,%#*****,*////*%           \n")
		escreva("                   .% * *******,,,,,,,,,,,...........*#***/(*****///*(,#        \n")
		escreva("                    ,/****,,,,,,,,,,,,...............%/*/#(*..,.,/#&&&&&&&      \n")
		escreva("           /&%&%&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##((####%#%%%%%%#%&%%/    \n")
		escreva("       *%((#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(%%%%%%%%#%%%%%%%%%%#############    \n")
		escreva("      &/#%&(#%%%%%&&&&&&&&&&&&%#(/..(@@#////(%(%%#######################** #,   \n")
		escreva("     /%%(,   .    .,.  .    .,.*,,**,. .*#&&%#### *   #(###############,*,./,   \n")
		escreva("    ,%%%%%%%%&%#(/*,,.....*%&&&&%%%%%%%%%%%#####,,./. #(##############(,,/,#*   \n")
		escreva("    ,  ##     .**,......      #####(.... .,###(.,,,*(./(#######((#((## ,/*/     \n")
		escreva("    *..#*.        ......  ......(#### ..**..(((.(** .,#(/((###%%#*.    ./*,     \n")
		escreva("     /(#*..............   .    .*/*..*#%%%#((( .,#../.                   .      \n")
		escreva("         ,...                          ....  .  .//#,                           \n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	} 
		funcao fiesta(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Fiesta ", cores[u.sorteia(0, 9)], "\n\n")
	
		escreva("            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&&&&&&&@@@@@@@@@@@@@           \n")
		escreva("            @@@@@@@@@@@@@@@@@@@@@@@,%&@@&&&%%##((((((/&#&&#&% (@@@@@@           \n")
		escreva("            @@@@@@@@@@@@@@@@@@@@/@&&&%%#(((////******#%##((,((.(@@@@@           \n")
		escreva("            @@@@@@@@@@@@@@@@@.%&&%%#((///***********##/((// ,/*&&@@@@           \n")
		escreva("            @@@@@@@@@@@@@@**// /.,,.  .***********,.%*  %&&@&&&(%(@@@           \n")
		escreva("            @@@@@@@@@####%%&&&&&@@@@@@@@&&&&&#####(#%,.&&&&#.//**( @@           \n")
		escreva("            @@@@@%@((######%%%%%%%%%%%%%%######%#%&&&&&#((//***,,(#@@           \n")
		escreva("            @@@&@%%#%%%%%%%%%%%%%%%%%%%%%%%, #%&&&&&&(///***,,,, #.@@           \n")
		escreva("            @@/,%#.    @@@@@@@@&&&&&.&&/###%/&&&&&&&/*/**,,,,,.  ,@@@           \n")
		escreva("            @@#%%&&@@&*&@@*     *&&*((((/**/&%#%&&    ,,,,,. ,/#&@@@@           \n")
		escreva("            @@(%&&*@@@%&&&&&@@@@@&&&&%##((((//#%*.#%%  ,.,*(%&@@@@@@@           \n")
		escreva("            @@%(#.(@@@,,/@@&&&&&%##((//////**(#,  %&,& .(#&@@@@@@@@@@           \n")
		escreva("            @@@&(.  /. **. /.(%%##(//////***/((#&&%(.* /&@@@@@@@@@@@@           \n")
		escreva("            @@@&%#((/**%*% .   .%//*,,/&#(****,* #% (/ &@@@@@@@@@@@@@           \n")
		escreva("            @@@@@@&&%##(//***,,,.,******,.       .%  *&@@@@@@@@@@@@@@           \n")
		escreva("            @@@@@@@@@@@@@@&&%%###(((///****,,....*#&@@@@@@@@@@@@@@@@@           \n\n")
		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	} 
	funcao gol(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Gol ", cores[u.sorteia(0, 9)], "\n\n")
		
		escreva("......                                                                ..........\n")
		escreva("....                          .*##(/////////////#((%%%%%%&%%&#/,        ........\n")
		escreva("....                     &,******/(((##((#%%%%%*##%&&&@&%%&&&&%%%%(*     .......\n")
		escreva("...                   ,*/**///(((%%%(#%%%%%#%*/(%%%&&&&%#%%%###((((&&/   .......\n")
		escreva("...               &.(***//(#%@&&&%&&%#%%##&*/#&@@%%%&&%%##&%%%%&@@@@@@((*   ....\n")
		escreva("...        ,,,,,,,,,,,,******(////////////((##&@%%#(#(##########%%%######%%%(...\n")
		escreva("...  /####%%%%%%%%%%%%%###((/#@@&%#########%%%%%%%%%%%%%%%%%%##%%%%%&%%#####(/..\n")
		escreva(".. .#&&%&&&/%&&&&@@@@&&#@&&(/%%%*%&##########%%%%%%%%%%%%%%%#########%&%%##//#..\n")
		escreva("..*#@@@@@@& @@&@@@@@@&&%%&&&&@%(/&&%%%#@@@@@(###########((((((((####&&/@@@#%%/..\n")
		escreva(" ./****,..,*//****//##%%%%%&&&&%&&&&&&@@@@@@&@((((((##%%&&&&%#(#((((#@&&#&@(/( .\n")
		escreva(" .(####.......*&&&&&&(%&&@&&@&@@%%%%%#(*@(((#@&(###((((((((((((####(%&(@*/&#%/..\n")
		escreva("  &@@@@@@@@@&@@@@@%@&&@@(#&##%%%%%%%(&(/#//&((@#((((((///(/(&@&###%%@&%(//@     \n")
		escreva("  @&&@&@&&%&&&&%%%%##%%&&&&&&&&&&&&&(#*##,/#//@#%%%&&.............&@&&&(#/%.....\n")
		escreva("    .&&@@@@@@&@@%.........,,,,,,&@%@@(((@/(.@@%######%%%%%%######((@@@&##(,.....\n")
		escreva(",*//(#%%&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@&&&&%%##((///***,,,,,,...........\n")
		escreva("......,,,,,,,,*****************************,,,,,,,,,,,,,,,,..................   \n\n")
		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	} 
	funcao ford_ka(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Ford Ka ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("                                                                                \n")
		escreva("                                         .     .....  .                         \n")
		escreva("                                .//#%%%%%%%%%#/* ,.,&&@&&&%&&@@,...             \n")
		escreva("                            ,/##(%#%%%&%%%#%%.,,&@@@@@&&&%%&#%&%#%(,..          \n")
		escreva("                         (###/(######&%#//(./*&@&%#%&&%%&&%&&@@%#%,.  #%        \n")
		escreva("                     *(@%#%(%%%####(#(((#.,*/,,,,/@&%&%%*......,,,,*****&       \n")
		escreva("                ...     .     . ... ,,****&%((.....,,,,***/***********,*,       \n")
		escreva("           *........      ....,(((#..,,,,,,*************************/*****      \n")
		escreva("          ##(*,.....,,#%%%&/##&&***,,,,*****************************@@@@@/      \n")
		escreva("         /@@@@@@@@@@%///**,**********#@&/***/*************/********@&#/(&/      \n")
		escreva("         */////#%%%%/////#/*%@//**@@@@@@#@@/(*//////*********(/***@@((/#&       \n")
		escreva("         (@%%%&##/////(%@@@@@****&%/(/(/@@@///**/(/***,           @@@@%@        \n")
		escreva("            %&#((((###%%(////***@////(/@/@&                                     \n")
		escreva("                    ./#&@@@@@@&@@@/@/#/%@#                                      \n")
		escreva("                                  (@@@*                                         \n")
		escreva("                                                                                \n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao hb20(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Hb20 ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@(&%%&&&&&&#/%####%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@%#%*......*........*&% ...    .....,***%@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@,,.,,***,,,**,,,,,.....,/%#.,,,...,,,,*******/&@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@#&&&%*****,*,.,*****(/%%%%*,,&&/,,,,,,,,.,,,***/*/*/&@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@&(#%%&&&&&&&&&&&&&&&&&&&%%%#(*//*,%#&&&&&&&%%%####%%%%%&&&@@@&&@@@@@@@@@@@\n")
		escreva("@@@@@&*%&%%(#%%%%%%%%(((#&&%%%%%%%%%%%##&&&&%%%/*/((**%&&%&&&&&%%%%%%%%%&&&@@@@@\n")
		escreva("@@@@@####%##(((((((((#############%#%%%####%%%%##( . *.//(**.**,*,,*,,..(//%@@@@\n")
		escreva("@@@@%( .,,.(((((((((((((((((((((((####  *,. .###((((%&%%%%###(((((((((((((##%@@@\n")
		escreva("@@@@% ,(/*  (#%%%%%####(((((((((((((*  (.&/   (((((/ *((/....* *,.(.,#*/(*.,.@@@\n")
		escreva("@@@@# %*,*.  ///////////(((###%%%%%#  ,*,/ (,  (((/  .///(/   . , .......,,.(@@@\n")
		escreva("@@@@@(///(*    .,,,,,,*********/////. ./*,,//  *//(#%%%%%%#(.*////(((((((##*(@@@\n")
		escreva("@@@@@@(  .   /@@@@@@@@@@@@@@@@%    .@*... .%    ,#%&&@@@@@@@@@*  ,(     &@@@@@@@\n")
		escreva("@@@@@@@@@@&&&&&&&&&&%%%#(//*,.           .                 .....,    *#%%&&&&@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")
	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao Hilux(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Uma Hilux ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%*#&      .     *,//(@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@/#%%%&&&&&&&&&&&&&&&. %###%%##&%&. @@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@(#&&&&&&&&&&&&&&&&&&&@. %%%&&&%&&&&& @ @@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@/.##&&&&&&&&&&&&&&&&&&&&& .&/%%#/(%%((//  /#(%##&%&@,@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@    ........................  ....   .. ...... ,  ......    @@@@@@@@\n")
		escreva("@@@@@@@@@&%.,*/(((((((((((...   ,#*##& ...... ,       .........  ...... (@@@@@@@@\n")
		escreva("@@@@@@@@@ #%&@&,(%@@@&@# #*&#/,,**/&. .........................   ##(.,,@@@@@@@@@\n")
		escreva("@@@@@@@%. %%%%%%%%%%%#####.       (       @@%#...,,,,,,........   @#(//*%@@@@@@@@\n")
		escreva("@@@@@@@&,&%%%%%%%%%%&&&@@%%%.....&% ..  @@&%&((............... ,@&#(@&@@@@@@@@@@@\n")
		escreva("@@@@@@@. .,@@*   ..@@@@   .... %%&&... @&#&@/&@,,,,,,../%%@@@&@@&&,&@#@@@@@@@@@@@\n")
		escreva("@@@@@@@@./((###%%#(///**./*   ....,...@&#*/@@@%@@&&%&&&@@@@@@@@@@@%@@%@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&#@@@@&%@@@@@@@@@@@@@@@@@@@&%%@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&%%@@#&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&#%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
		funcao mustang(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Mustang ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("                                                      ///////////////           \n")
		escreva("                                **&#((((((///*///////*** .%%,*/    (#%%#        \n")
		escreva("                            ,        (((#(/@&%//&&&@@&&%%%&&#///*,.,#%%%%       \n")
		escreva("                         ,*///*(##(#####(((//@@&@@@@@&@#%%%%@((//,*//////       \n")
		escreva("               .,,..../,,,,,,((//((((/////&%@@@@@@@@%(((/(((((((((//////**      \n")
		escreva("         /,,,,*###%(%%%%#////////////////(#@&&&%(((((((//#(((((/&&&&@//**,      \n")
		escreva("       ***//////(/**//****////**(/(((((((((////((////////////#&@@@@&&&*//,      \n")
		escreva("      *&#(/((/((//,/////*/(((((((((((((/////////////////#///@&@@&&@@&%*%#       \n")
		escreva("      /%@&%&&&&/((#&&&%&&%@,((@&&&&&///////////((((////(////&&&@@@@%%           \n")
		escreva("      (&@#%%&&&&@((##(((((((@&&@@@@&&&//(///////%#@&&&%,..,&%%&&&&%             \n")
		escreva("      &/%%&&&&&&(%&@@@@&(((&&@@&&&@@&&%%@&&&&%,,,,........                      \n")
		escreva("      ..,,&&&@(@@@@@&@@((%%@&@@&@&#&,,,,,.......                                \n")
		escreva("          ..,,,*,**,,(&#/,,**%&&&%...                                           \n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
		funcao onix(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Onix ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("                                                       (                      \n")
		escreva("                          .(&%#(///*****,,,,,,*/%%(......,...,#%##*           \n")
		escreva("                      (/#(//(//***,,,,,,,*,,,,&&,,,,,**,,,******* &&/         \n")
		escreva("                  (/((/((/////*,,,***,,,,,,,%&,**/***///.,/(((((*/./&&/       \n")
		escreva("              %(,(//((///****,,,,,,,,,,,,,%@(,(@@&@&(.((/**#####%#&&&&&&/     \n")
		escreva("       #@@@@@@@@@@@&&&&&&&&&&%%%&&&&@&&&&&&&%#(%&&&@@@@@%%&&@@@@@&%%#&&&&.    \n")
		escreva("   (&&&&&&&&&&%%%%%%%%%%%##%%%#///(#@@@@@@@@@@&@@@@@@@@&&&&&&&&&%&&&@@@@&&&*  \n")
		escreva("  .*,/       .......  ,%****. .../*&@@&%%%%%&/#%%%%%%%%%%%%%%%%%%%%%%%%%%%&%, \n")
		escreva("  @@              ..   @@&&&&&%%%%%%%% .,   %%%%%%%%%%%%%%%%%%%%%%%%#.    /#/ \n")
		escreva(" .(&..  ,*/(((((  ..../@@&&%%*.,(%%%/.,/,/., %%%%%%&&&%##%%#%%%####% ,/.*. ## \n")
		escreva("  /&&              ..#@&&%%%  .* ##%.,, * /. /(##%&&@@@@@&%##((####/,  *,,.#* \n")
		escreva(" /&@&%%%%%%%%%%%%%%%&&&&&&&&&&&%%##..., /  ,.#((((((((((((((((((((( , ..  ./  \n")
		escreva("                                    ..#, ,/.                        .,  *,    \n")
		escreva("                                      ..*,.                            ..     \n")
		escreva("                                                                               \n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}

	funcao palio(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Palio ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("                                            ./#%&%%#/.  (%%#%%#%                \n")
		escreva("                                 #%##%&&@@&@@&%%(%(#(((((/((//##(/%#&/          \n")
		escreva("                           (.,,*//((((//#((((((%%#/((((//##/////*##(##%%,       \n")
		escreva("                        %.,*/((((((########(##%##(*****,,,(#,,,,,,.&*,,*/#(     \n")
		escreva("                   &&%&((/(((#&@##%####((###%@###*&..***,,%#,,,,...@/#*.,**%.   \n")
		escreva("               ,*/////((((#######(,.,*(((#%##%&@&@&,,,,,,,@(@(&&#/*,,,,,*,,,*(  \n")
		escreva("        *#%&%. .,*//(((((###%%#####%%%%#%%####(((((((*(**,&,*,,,,***&*////((##  \n")
		escreva("    (.(%%%%#########%#%%###%%&%%%%%%%%#,###%%....,,****/////((((((((##(*****##  \n")
		escreva("    */ /&/%/%%%%&/%%#%/ *.,.(/ ,/%%#######*//,#&##########%#,.,,,,**#((@@@@@/## \n")
		escreva("  **////#&&&######/#%&(&%%%%%%&%%#%%(@@@@@@@@&/(//(#%%#############&#(((%%#@((# \n")
		escreva(" &%/#&&&&&&@@@@&&&#(/*../%##%%%&,(##@&%%&%%#@@#&#%%%%#%#%&/*%%#####%#/&.**&%##  \n")
		escreva(" *#@%********#((((/&(&&,*#%%%%%%,(#&%/*. ,(&&%&%&%%%%&@&%(,......%&%%%( / *%    \n")
		escreva("  #%%&@@#%&@%@@%&@%#/**%%%(((###(#&,%&,.*&/,&&#%**/,              @&&&,#**&     \n")
		escreva("    (&@&*,... ./%%.//(///((###%/#&%//.,,&,/,&&%@&#/////////////////&@@&##&%,....\n")
		escreva("      @@@@@@@@@@@,,,,***///(((&%#&&,*/&.#,/&&%&%%%%%######(((((///****,,,....   \n")
		escreva("  ...,,*/(#####%%%%%%%%&&&&&&&&%&&&&%%&&&&&&&//**,,,.........                   \n")
		escreva("  .......,,,,,,*******************(%@@@@%,.....                                 \n\n")

		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao porshe911(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Uma Porshe 911 ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&%%###(((((((((((((((##,  &#@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#((//(///***/**,,.       .*,*.,,,,./#%@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%###%&&&%&%**,,,.     ...##( *,./(#((.,.,,(.%@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@%%%#&&&&&%%%*,  &..... .,.... .*%.........,.,,,,*#%@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/, %%%%@&&///,,. .. ....  .,,,*  ,   ,*  (*,,,*///##########%&@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@&%%%&&&%##%%%%%%%%%%%%%%%########(/*,,,(*,,//(,..*//**/****,*,,(,,(,,,/@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@#/**//##%%%%#%%%%%#######(#%(((((######(/***/((##,,,,*,,,,,,,(##*,/(*,,,,,,.,. *@@@@@@@\n")
		escreva("@@@@@@@@@@@#//(&*(#%%%(########(((((((/**//(#*, . ./,,,,,,,,/***(*#,//***,,,,,,,,*,,*,,,, /,( &@@@@@@\n")
		escreva("@@@@@@@@@@##*/((###(((/////****************..** (/ (,#**,,, ..   ,*,,,,,,,,,,,,,,,,,,*,./,(*&*@@@@@@@\n")
		escreva("@@@@@@@@######(///*****&*/@&****************.,,,..,**,,*%#%./,//, ,*((((((((((((((/,,,,../. ,&&@@@@@@\n")
		escreva("@@@@@@#(###((//*************//#@***,**,***,,*,*,,,,,*/,,*,%*.(#,/* ((/////(((/((/,,,,*/.%.,.*/@@@@@@@\n")
		escreva("@&&@&& %/. /********///////////**#**///,,,,,,,,,**,*,,,,.. ,.*,,/. *(/////,,,,,,*//////.,,**#@@@@@@@@\n")
		escreva("@@@@@@#/  .(////,,@&@@@@&,*****,,,,,**,....,,,,,.******/.* .%*../* (,*,*///(/,,**#    .. *,,@@@@@@@@@\n")
		escreva("@@@@@@* . .*,.  ..,*****. ,,.*,,    .....,,,,,,*****/(., ,.*, .,/(**********///(#/##%%%%&&@@@@@@@@@@@\n")
		escreva("@@@@@@@((/*/*,,,,,,,..     ...  ,,,,. ..........*****/*.*/.#. *# ...,,*/(#%%%&&&&&&&&&&&&&&@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@&%/......*////*****#/,,***,*************...,.*@,.#,/(##%%%%%%&&&&&&&&&&@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@%%%%#*,,,,,.*,......,................ ..          ..,.%%&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@&&&&%%##(////////*******/*///////(((##%&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")


		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
		funcao ranger(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Uma Ranger ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("@@@@@@@&&&&&&%%%%%%%%%%%&&&&&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@&&&&&&%%%%%%%%%%%&&&&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@&&&&&&%%%%%%%%%%%%%&&&&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@&&&&&&&%%%%%%%%%%%%&&&&&&&&&&@@%#(*,,....*,.,,*(&@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@&&&&&&&%%%%%%%%%%%%&%%%%%%%%%%%######## *////#(///%,(#@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@&&&&&&&%%%%%%%&%%#%&&%%%%%%%%%%####*,%%%&@@*(,*,*%.%&@&&@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@&&&&&&&&&%((*/**,,,,,,.....,,......,@@@#(/*,... . .... ...@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@%,.................... ., .. .. ..*@&..,,,.&#,,,,,,,,,,,,,#@@@@@@@@@\n")
		escreva("@@@@@@@@@@@&@&%%%&&&&&&&@@/@@&@&@@@., ..#####%,.,,,,,,,,,*,,,,,,.&@@@,(@@@@@@@@@\n")
		escreva("@@@@@@@@@@@#@&&%%#%&&&&%&&@(,,,,,,,,,.%%&@@@@@&&,***********,,,,@@&@@*(@@@@@@@@@\n")
		escreva("@@@@@@@@@@,....,***/(((((, .. ....,,,/@&@@#(@@@@@,,,,**((####(/#@%%%@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@(&&%//////,,**,**//(%#%&&/*@@@#%#&&&@@@/%/(#%((%&@@@@@@%#%&@@@@@@@@@@@\n")
		escreva("@@@@@@@&&@#@@@@&&&@@@@@&@@@##//#/*##@@@%#&%&%&&@@@&&%#((&&&&&&@@@%%&&%%%%%%%%%%%\n")
		escreva("@@&&&@&&&&&&&@@@@@@@@@@@@@@@@%%%%%%@@@@@@&@&%#&@@@@@@@@@@@@@@@@@@&%##((((((((((\n")
		escreva("@@@@@@@&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@#%@&%&@@@@@@@&&%##((((((///((((((((((((\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@(@@@&%%###(((((/////////((((((((/(((\n")
		escreva("@@@@@@@@@@@@@@@&&&&&&@@@@@@@@@@@@@@@@@@&&&%%%#######(((((((((((((((((((((((((((#\n")
		escreva("@@@@@@@@@@@@@@@@@&&&&&&&&&&&%%&&&&&&&%%%%%%%%#################################%\n\n")

		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao sandeiro(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Sandeiro ", cores[u.sorteia(0, 9)], "\n\n")

		escreva(".                                ...&*,*/(#%%%##((/*(.    .  .                                   \n")
		escreva("                           .*.,,*/(##%%%%%&&&&&&&&&&&&&&%%&&, %*,,@.,,,&#                                \n")
		escreva("                        ///(///(%&&&%####&@@@&&@@@@((((//&@, ,,,,*,@....#(.                              \n")
		escreva("                      #(#(((((#&&&&@####@@@@@@@@@@@@&((/@@#. #***//*% ...@@                              \n")
		escreva("                ,*/@%#%(%%###%%@@@@@@@@@@@@@@@@@@@@@@@@@@../(%(**(#&&..*,,*                              \n")
		escreva("                                           ..     . ..   #%&@&#&,             .                         \n")
		escreva("              .....................   . .......,.        &(.,.       ..    .,                           \n")
		escreva("     ,*#............*#*............ %&@*.#*((//*%,           ........      ..,                          \n")
		escreva("   ,././@@&&&%%&&&,%.,%%%%%&%(//#%&(&%#%*&*,./ &........... ,..........    ../,                        \n")
		escreva("   %&,*@(&&&&&&@@&(@,@@&%%&@@@*. &@,@@%%%%   ....,,,,..@@@@.................%/@                        \n")
		escreva("           .&@@@@@@@@@@@@@&....       ...........,,,.#&@&#@&..,,,....... ../%(&                        \n")
		escreva(".&/,,.                   ..... .. .,,,,.,#%&(*......(/(#/%@&,..............&(. /                       \n")
		escreva("%@@@@@@@@@@@% . ,..  * * &@@@&@@@@@@@@@@@@@@@@@*....@@&%@@@@%.,,,,.... ,(..@&,/&                       \n")
		escreva(" @& @&&#@@&@&&&&&&&&&&&&&&&%%&@.,*&&&&&@@**@@@@**..((*(&#(#/&,/*/...,,,@@@@@#/((                       \n")
		escreva("  (&&&,@@@@@@&@@@@@@@@@@@@@@@@@@@@@,/%&@@@@@@&%*//,,#@%/#(@%%&/.        .@&%&@#*                        \n")
		escreva("  ..                           .,,,,.....     ....,&@@%@#%,&&(((((###%%%%@@@@&.                        \n")
		escreva("    %&&@@@@@@@@@@..,,**/((###%%%&&&&@@@@@@@@@@@@%&@@&(/&((#&@@@@@@&%#(/*//***,.                        \n")
		escreva("   .*(#@@@@@@@@&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@&&@&&@&&&%%&%#(/***,,,,,,,,,,...                        \n")
		escreva("     .......,,,,,,*****////((((((((((#######(((((((///***,,,,,,,,,...........                          \n\n")
	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao fox(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Fox ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&%###%@@*@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&*,,,...         ,@&(    ,,    //@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@*(*//****   **   *.@@& *    * ,****, /*@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@##(//*******   ***   @@@//.%%(/./.,,  .*..%/@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@/////////((((((#####@@@@@@//,.  . ,(%&%%%%###(((/@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@///////((((((#####@@@%&&@@@@@@@@@@&@&&&&%%%#*##((((///.@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@////(((((((###%%%@&@#./&@(#@@@@@@@&%%%#####((((((//////((/@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@/     (/         ..*(#%%(#.&&@@@(*.(##(((((/////////(((#., ,@@@@@@@@@\n")
		escreva("@@@@@@@@@@,,,,.,*////((##%&&@%###((((%%&% .***/ /(%%%#%#*//////.,..*** @@@@@@@@@\n")
		escreva("@@@@@@@@@@,   #######////(((((((((((((((.../.*/ ,/**////((((****/*,*(,.@@@@@@@@@\n")
		escreva("@@@@@@@@@@(.*           ..(.... .., .///.%./(,,(../******,@@@@@@  .*.%@@@@@@@@@@\n")		
		escreva("@@@@@@@@@@@@@&   .      .,***////******..,&*( (&,....,***////(////*#@@@@@@@@@@@@\n")
		escreva("@@@@&&&&&%%##((//    ....,.,,,,,...... ..,%&@/*.##%%&&@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@&&&&%%###((///////////////////***,.. /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")
	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao voyage(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Voyage ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("                                *((((####%%&&#######%##%%%%                     \n")
		escreva("                           //((((###&&##&&%%*(/((((##******&%(/                 \n")
		escreva("                        ((#(#&###&%%&&&#/#%%&#(((((##(/((((((#//#*.             \n")
		escreva("                ////((((((#%%%###%%%%((%%&#(////////////////(//((//(#%          \n")
		escreva("            @@@&&&&&&&&(//,((/*(#%#(((////#(((((((#%##%&&&&&&((//(%%%%          \n")
		escreva("           %##(#%/(((*#@&#//////#@@@@@&#&&&&&&&&&&&&&&&%(///(&@#@@&&&&          \n")
		escreva("          ,%& ,, &&&&&&&&&&&###&@&,#*@&@&&&&&&&&&&&&&&&&&&&&@&%/#@@&&%          \n")
		escreva("           &@@@@@@@&&@#&%&%#&&&@&/.(((@@&&&&&&&&&&&%&&&&&&&@@%/#(,              \n")
		escreva("              @@@@@@@@ @@@@@@@@@&/@**.&     @@@@@..........@@@%,##              \n\n")
		escreva("          .,*/(#%&&&&&&&&&&&&&&&@@&#&&&&&&%%%%#(/*,,...     \n")
            	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao compass(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Uma Compass ", cores[u.sorteia(0, 9)], "\n\n")

		escreva("                                             ........      /                    \n")
		escreva("                               *((#%%&&&@@&#(##%%%%%%#.,,###%###/,*,.           \n")
		escreva("                           ,(#%%%%%%((#%&@@@@@&&&&%%%,(#######(/////// .        \n")
		escreva("                        *##%&%%%(##&&@@&&@@@@&&&&&&,,*####((((#,,*((#(&. .      \n")
		escreva("                     /#%&%%%%%#%%&&@@&&&@@@@@@&&@&,.@%&@@@@&##%&&(,.....   .    \n")
		escreva("             .  . ..............,,.........,...., .,,,,,,...../*.....,..    (   \n")
		escreva("        ..,,,,,,,,/*,,,,,,,,,,...........,.,........  ...,.,,,,,,,.,.....,,,,   \n")
		escreva("       (/&@%&/#@%&@(#@%#&@&@&&%(*((#((.*.(............................,.%@@@#   \n")
		escreva("       ../#%%%&&&@@&&&@&&@&&&,,,...........*,#%@@@@@&.,.,,,,,,,,,,,,,,,&%((@@   \n")
		escreva("      *%%&@@@@@@@@@@@@@@@@@@&&&@@@@@%.....*(&@@&%@@@@#*,,,,,,,,****,,,*%%/*&@   \n")
		escreva("       %*/*/,,,,,,,,,,#/,,,,..&&&&&&@@(,,//@%&@@@@&%%@**,,,,,,,/((%@@@@%&(%#    \n")
		escreva("       /@@@@/**,,,,,,,,@@@@@&,.........*//@@(%#%#@/*&%*/&@@@@@@@@@@@@@@&&.&*    \n")
		escreva("       (@&&&@@@@@@@@@@@@@@@@@@%%%%%%%%%%#%&&&%%*#&%&(&&#*,,,,,.....,@@@@%(#*    \n")
		escreva("         @@@@@@@@@@@@&&&%##(//*(&&@@@@@@@&&%@%&%&#&,%&@@@@@@@@@@@@@@@@@@@@(     \n")
		escreva("        ..,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&%*@#&%# %&&&&%%#(*,..                \n")
		escreva("           .,/(##%%%%%&&&&@@@@@@@@@@@@@@@@@@&%%%%&@/                            \n\n")

            	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao fit(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Honda Fit ", cores[u.sorteia(0, 9)], "\n\n")
		
		escreva("                                 .. ..    ..    ..  (....,@%(%&*....            \n")
		escreva("                           &,,,*....((((((((((###..%*##////#######(%##..        \n")
		escreva("                       %,****...... ###((####(#.,#%%%(////*//((/////(((/ .      \n")
		escreva("                  .&*.////#........(###((#### ,(/*/(,&%,*,,,,/,,,,,**##( ../    \n")
		escreva("                     .. ...   .*#&&%%@%%@@@,##((*@@&@@#&@&#   .   ....,.,....   \n")
		escreva("          .............................  .........,,,..  .. /* ....,,..    .,   \n")
		escreva("       . ......................##(,,(#(..          ......,,,,,,*,,,.......,,*.  \n")
		escreva("      .#.. .. ........  .(%&&&&@%&,,&&..        ..,,,,,,**********,,,,,,,&@@@.  \n")
		escreva("       %@@%@&*(@&@@&@&%&&@@@#,%&@#.........#@@,*,,,,*****************,,,%%@&%&  \n")
		escreva("    ,..... . ..   .           ..... ,,,,%%%%%%@@/,***********,, ....,,*&@*%/.@  \n")
		escreva("    &&%&&&%%%%%%@&&&%%(*#&&&&(@//**,,,,@@&@  @&&@*,**,,...***//*//((/&%&@*&@(   \n")
		escreva("    @&&%@@%%&%%%@&@&@@@@@&&&&&&&///***,@&&(%# @&@**/////# #&&&%##&   @&&&@@.    \n")
		escreva("    &&%@@@@@&@@@@@@@@&&@@&&&&&&&&#(///@@@*@(&@@&@##%@@@@&&@@&&&%%%%###&&&%      \n")
		escreva("          %@@@@@@@@@@@@@@@&&&&&&@@&@&&@@&&@@@@&@@@&&%%##((/,                    \n")
		escreva("    .,*/(#%&&&@@@@@@@@@@@@@@@@@@@@@@@@@@&@%##&/,                                \n")
		escreva("                    .*/////(///*,.                                              \n\n")


            	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao siena(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": Ola, qual seria o seu carro?\n")
		escreva(Nome_cliente, ": Um Siena ", cores[u.sorteia(0, 9)], "\n\n")
		
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,**..    ..****/(&@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                   .**      *     *@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@ ..                  .*,.       ., .... /(@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@ .. . ........., ......***..,%&@@#..,,......,*/@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@%###(((((((///////************,*****  ,,,,,....,...,,*****//(@@@\n")
		escreva("@@@@@@@@@@(/**********************.****,,*******,,,*********,..**,*,,,..,*****@@\n")
		escreva("@@@@@@@@@,,*/(##%##(*,,,,,.. .. .....,**,,,******,,,,,,,,,,,,,,,,,,,,,,,,**%,,*@@\n")
		escreva("@@@@@@@@,   . /@...,**%,,.   .,,,,,..,,,*,*,     ,*....,,,,,,,,,,,,,,,,,,   #,,%@\n")
		escreva("@@@@@@@%.,%%%%%%%%#,,,,,,,,,,,,.,.,...,,,.  .     .,..............**/,,.  . ..,@@\n")
		escreva("@@@@@@@@  *#&%%%%#,.,,,,,,,.......,..... .     /   ......................, ,.*@@@\n")
		escreva("@@@@@@@@ .                #(//&&* ,.....  / # , .  ,,,,*,.............   . ,&@@@@\n")
		escreva("@@@@@@@&,,    ...  ..,(,,,,,,,...,/,... . , ,..., .../(///((((((####%    ., &@@@@\n")
		escreva("@@@@@@@@@@@@&         #*...............   ,... ./ .........,,,,,**,,,...*%%&&@@@@\n")
		escreva("@@@@@@@@@&%%#(*..  ..................      .  .  ,,,****//(((##%%%%&&&&@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@&&&%%%###((///***,,,,.....        ####%%%&&&&@@@@@@@@@@@@@@@@@@@@@@@@\n")
   	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao evento_especial(){
	
		escreva("                                         --- Evento Aleatório ---\n\n")
		escreva("Um cliente novo chegou com um carro de corrida. Ele está com pressa e oferece um pagamento extra por agilidade.\n\n")
	
		escreva("////////////****************,,,,,,,,,,,,,,,,,,,,,..,.................,,.,,,,,,,,,,,,,,,,,,,,,****************///////////\n")
		escreva("///////////****************,,,,,,,,,,,,,,,,,,,,..........................,,,,,,,,,,,,,,,,,,,,,****************//////////\n")
		escreva("////////****************,,,,,,,,,,,,,,,,,,....................................,,,,,,,,,,,,,,,,,,,***************////////\n")
		escreva("////////***************,,,,,,,,,,,,,,,,...........................................,,,,,,,,,,,,,,,,***************///////\n")
		escreva("///////*************,*,,,,,,,,,,,,,,.................................................,,,,,,,,,,,,,,,,*************//////\n")
		escreva("///////*************,,,,,,,,,,,,,,,.........................................@@@@@,....,,,,,**,.,,,,,,**************/////\n")
		escreva("//////*************,,,,,,,,,,,,,.,...................... ....... ..........(*//..., ....//,.,,&.%,.,,,,,,..,********////\n")
		escreva("/////*************,,,,,,,,,,,,,,......................         .(.  ...%&(.*.*,/@      .*...#@,&,#(,,,,*, ./(*******////\n")	
		escreva("////*************,,,,,,,,,,,,,.....,,.............       .,   %%&  &&*&%&(%###***, ...  .,.&,@,@##/,,,,/((&**********///\n")
		escreva("////************,,,,,,,,,,,,,/&&%%***,..#....... .          #%/%#((/(/#@#@&&%#(((((##  ,,..   %&@&%@%%%%%%%%#(*******///\n")
		escreva("////************,,,,,,,,,,,.%&&@&.&@@@@@@%%..... .*..,,,,,,,,,****,.**/*.**  ..,.*,.,.. ...,,,,%&&&&&%&&&&&&@@%******///\n")
		escreva("///*************,,,,&@@,,,,&%%% @@&@@@@&#%@..(**...,,*..,..*(((%**/(&(*. **,,**. .....  ./%((@@&@@@&&%%%###%@%(******///\n")
		escreva("////***********,@@@@@@@,,,,@&@@/@@@@@/**,/,,,%&*(/*.#/&&&&&%%#%*/***** /*/@@@**//(%%*%/(%((&&@@@@%@@&&&&&&((&(%******///\n")
		escreva("////**********&@@@@@@@@,,,,,@@@..%,.,,/,*@@//&&&(@#%%&&&@@@@@&%%/#&&#&///((/#(#(#(/((//&&%%@&@@@@@@@@&@&@&(,&///****////\n")
		escreva("////********%&@@@@@@&%*/,,..,,.,,/,**/&%/(&&&&&&@%&&&&@@@&&@&%%@%(@%@@&&@@@@@@@@@@@&&&&&&&&&&&&@@(/*//(%&&%((///////////\n")
		escreva("////********/%%/*%/%%.,,...,,,, ///(&&@@@####%%%@%%%%@%%%@#*/////&/@@@@@@@@@@@@@&&%&&&&@@@@%*********************///////\n")
		escreva("///*******/*,***.%.%@,..,*.,***@@@((((#%%&&&@@@, &&&&%%&@%//,@@&(%&@@@@@@@@@@@@@@@&#***,,,,,,,,,,******************/////\n")
		escreva("///////////.,,,# ****  *,@#*(##,*%#.,,%**&*   ..,@&&@@@/(&(%%@%%(&//(/****,,,,,,,,,,,,,,,,,,,,,,,*****************//////\n")
		escreva("//////////(.,,,#.@@@@%//*/**%.....,*/*%    ******@&&@@@#@&&((((@*%@**,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*****************/////\n")
		escreva("//////////(&@@@#,,*.,%*%/(*,../,(**#,,  ,/,,,*,*/&@@@@@&@&/.,.(&@%#/*,,,,..,,,,,,,,,,,,,,,,,,,,,,,****************//////\n")
		escreva("/////////////(%&&&@@@@ #%*%,%*%%.%,%, .*,,*,.*/,*#&&&@@@@@@@&&//***,,,,,,,.,.,,,,,,,,,,,,,,,,,,,,,,**************///////\n")
		escreva("//////////****/////(#%&&&@@@&%***,*/ ***,*#&&&%(////////****,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****************///////\n")
		escreva("//////////**************///#%&&&&@@&&&&&&&%%%%((/**,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,**************/////////\n")
		escreva("///////////*********************//#%#(((/*****,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,***************//////////\n")
		escreva("////////////****************,,,*,*,*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****************///////////\n")
		escreva("/////////////******************,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****************////////////\n\n")

		escreva("[1] Aceitar o desafio (+R$ 400 , +risco de falha) \n")
		escreva("[2] Recusar (Sem bônus, sem risco)\n")
		leia(escolhas)
    
    		escolha(escolhas){
    			caso 1:
    			dinheiro = dinheiro + 400
    			se(u.sorteia(1, 3) == 3){
    				erros_evento++
    			}
    			horario = horario + 2
    			pare
    			caso 2:
			horario++
			pare
		}
	}
}
