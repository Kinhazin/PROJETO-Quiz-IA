programa {
    
    // Fun��o para mostrar a quantidade de pontos e moedas ao jogador
    funcao mostra(inteiro pontos, inteiro moedas, inteiro vidas) {
      escreva("\n")
        escreva("Pontos: " + pontos)
        escreva("\n")
        escreva("Moedas: " + moedas)
        escreva("\n")
        escreva("Vidas: ",vidas)
    }

    funcao mostrafinal(inteiro pontos, inteiro moedas, inteiro vidas) {
        escreva("\n")
        escreva("== FIM DO JOGO ==")
        escreva("\n")
        escreva("Voc� fez um total de: "+pontos+" pontos")
    }
    
    // Fun��o para calcular a resposta da alternativa 1
    funcao inteiro resposta1(caracter alternativa) {
        inteiro resposta
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A Intelig�ncia Artificial realmente busca algo na mente humana, por�m n�o � desvendar e simula-l� nas m�quinas. A mente humana por si s� � muito complexa, �nica e abrangente, algo bastante improv�vel de se recriar, apenas 'simular'.\n")
            escreva("\n")
            escreva("O correto � a letra B - A intelig�ncia artificial busca reproduzir nas m�quinas por meio de algoritmos e sistemas, algumas fun��es cognitivas humanas, como por exemplo: A capacidade de racioc�nio, tomada de decis�o e aprendizado cont�nuo.\n")
            resposta = 0


        }
        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! A intelig�ncia artificial busca reproduzir nas m�quinas por meio de algoritmos e sistemas, algumas fun��es cognitivas humanas, como por exemplo: A capacidade de racioc�nio, tomada de decis�o e aprendizado cont�nuo.\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\n Voc� sabia que o primeiro computador digital eletr�nico pesava cerca de incr�veis 30 toneladas, contendo impressionantes 180 metros quadrados. O famoso ENIAC!\n")
            resposta = 1
        }
        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")          
            escreva("Incorreto. O projeto 'Genoma Humano' foi lan�ado em 1989 e teve seu fim em 2003, com o foco em decifrar o c�digo humano, conseguindo desvendar incr�veis 92% de nosso c�digo gen�tico, entretanto este n�o � o foco em geral da IA.\n")
            escreva("\n")
            escreva("O correto � a letra B - A intelig�ncia artificial busca reproduzir nas m�quinas por meio de algoritmos e sistemas, algumas fun��es cognitivas humanas, como por exemplo: A capacidade de racioc�nio, tomada de decis�o e aprendizado cont�nuo.\n")
            resposta = 0
        }
        retorne resposta
    }
     funcao inteiro resposta2(caracter alternativa) {
        inteiro resposta
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! Um dos pioneiros na intelig�ncia artificial antes mesmo de seu termo ter sido inventado. Alan Turing, com a cria��o de um artigo que explorava a possibilidade de uma m�quina conseguir ser instru�da a pensar, aprender e utilizar de sua pr�pria intelig�ncia para resolver problemas, igual a um humano.\n")
            escreva("\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\n Voc� sabia que Alan Turing � conhecido como o pai da computa��o ? Ele foi o inventor do famoso Teste de Turing, um experimento que avalia a capacidade de uma m�quina de exibir comportamento inteligente que seja equivalente ao de um ser humano, ou seja, para saber se um computador pode se passar por um ser humano!\n")
            escreva("\n")
            resposta = 1

        }
        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Errado! Organizada por John McCarthy, Marvin Minsky, Nathaniel Rochester e Claude Shannon,  a confer�ncia de Dartmouth tinha como   objetivo explorar a hip�tese de que uma m�quina pode ser programada para aprender a pensar como um humano. Apesar de tudo isso, este n�o foi o primeiro registro da ideia de Intelig�ncia artificial, por�m foi da cria��o do termo.\n")
            escreva("\n")
            escreva("O correto � a letra A - Alan Turing, um dos pioneiros na intelig�ncia artificial antes mesmo de seu termo ter sido inventado, com a cria��o de um artigo que explorava a possibilidade de uma m�quina conseguir ser instru�da a pensar, aprender e utilizar de sua pr�pria intelig�ncia para resolver problemas, igual a um humano.\n")
            escreva("\n")
            resposta = 0
        }
        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")          
            escreva("O Campe�o mundial de xadrez Botvinnik tinha um projeto, o supercomputador Botvinnik! Seu objetivo era criar um programa de xadrez com a capacidade de reproduzir os processos do c�rebro humano, por�m essa ideia surgiu em 1960, assim n�o sendo a primeira.\n")
            escreva("\n")
            escreva("O correto � a letra A. Alan Turing, um dos pioneiros na intelig�ncia artificial antes mesmo de seu termo ter sido inventado, com a cria��o de um artigo que explorava a possibilidade de uma m�quina conseguir ser instru�da a pensar, aprender e utilizar de sua pr�pria intelig�ncia para resolver problemas, igual a um humano.\n")
            resposta = 0
        }
        retorne resposta
    }

  
    
    
    funcao inicio() {
        
        cadeia nome // VARIAVEL PARA GUARDAR O NOME DO USUARIO
        inteiro Dificuldade // VARIAVEL PARA ESCOLHER A DIFICULDADE E CONFIRMAR
        inteiro continuar // VARIAVEL DE CONTROELE (VARIAVEL NECESSARIA, POIS ESSE CODIGO APRESENTA BASTATE LA�O DE REPETI��O, POIS O PORTUGOL NAO ACEITA PASSAGEM DE VALOR DE VETORES EM FUN��O)
        inteiro pontos = 0 // PONTOS DO USUARIO
        inteiro moedas = 5000 // MOEDAS DO USUARIO
        inteiro dicas = 1 // QUANTIDADE DE DICAS QUE O USUARIO POSSUI
        inteiro eliminar = 1 // QUANTIDADE DE ELIMINAR ALTERNATIVAS QUE O USUARIO POSSUI
        inteiro next = 1 // QUANTIDADE DE NEXTQUESTION QUE O USUARIO POSSUI
       
        
        // Apresenta��o do Quiz
        escreva ("Ol� participante, tudo bem ?\n")
        escreva("Seja muito bem vindo ao nosso Quiz: *INTELIG�NCIA ARTIFICIAL - O NOVO NORMAL*\n")
        escreva("Estamos muito felizes de ter voc� por aqui! Esperamos que o conteudo desse quiz possa contribuir em seus estudos e entedimento sobre a I.A, a tecnologia do momento\n")
        escreva("\n")
        escreva("Para come�armos, como podemos te chamar?\n")
        escreva("Digite seu nome: ")
        leia(nome)
        escreva("\n")
        escreva("Seja muito bem - vindo, " + nome + ".\n")
        escreva("Antes de darmos inicio ao quiz vamos falar de como ele funciona, j� que n�o se trata de um Quiz chato e normal, e sim de um interativo e divertido!\n")
        escreva("\n")
        escreva(" * REGRAS * \n")
        escreva("\n")
        escreva(" � O jogador possui x n�meros de vida, dependendo do modo de jogo!\n")
        escreva(" � A cada erro, voc� perde 1 vida, ent�o tome cuidado, pois ao chegar a 0 vidas � game over.\n")
        escreva(" � A cada acerto, al�m de passar para a pr�xima pergunta, voc� ganha pontos e moedas.\n")       
        escreva(" � Voc� pode trocar suas moedas por #Dicas - #Vida Extra - #NextQuestion - #Eliminar Alternativa.\n")
        escreva(" � E tem mais! A cada quest�o acertada, voc� libera uma curiosidade sobre o mundo da tecnologia!\n")
        escreva("\n")
        escreva(" * REGRAS * \n")
        
        // Escolhendo a dificuldade
        faca {
            escreva("\n")
            escreva("Agora chegou o momento de decidir a dificuldade do Quiz\n")
            faca {
                escreva("\n")
                escreva("Escolha o n�vel de dificuldade: \n")
                escreva("Digite: [1] F�cil | [2] M�dio | [3] Dif�cil\n")
                escreva("Escolha: ")
                leia(Dificuldade)
                se (Dificuldade != 1 e Dificuldade != 2 e Dificuldade != 3) {
                    escreva("Op��o inv�lida! Por favor, escolha novamente.\n")
                }
            } enquanto (Dificuldade != 1 e Dificuldade != 2 e Dificuldade != 3)
            
            cadeia dificuldade_Nome
            inteiro vetor[7]
            escolha (Dificuldade) {
                caso 1:
                    dificuldade_Nome = "F�cil"
                    vetor[0] = 10 // GANHO DE PONTOS - MODO F�CIL
                    vetor[1] = 20 // GANHO DE MOEDA - MODO F�CIL
                    vetor[2] = 5 // VIDAS DISPON�VEIS - MODO F�CIL
                    vetor[3] = 15 // VALOR DA DICA - MODO F�CIL
                    vetor[4] = 25 // VALOR DE ELIMINAR QUEST�O - MODO F�CIL
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO F�CIL
                    vetor[6] = 45 // VALOR DA VIDA - MODO F�CIL
                pare
                caso 2:
                    dificuldade_Nome = "M�dio"
                    vetor[0] = 25 // GANHO DE PONTOS - MODO M�DIO
                    vetor[1] = 15 // GANHO DE MOEDA - MODO M�DIO
                    vetor[2] = 3 // VIDAS DISPON�VEIS - MODO M�DIO
                    vetor[3] = 15 // VALOR DA DICA - MODO M�DIO
                    vetor[4] = 25 // VALOR DE ELIMINAR QUEST�O - MODO M�DIO
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO M�DIO
                    vetor[6] = 45 // VALOR DA VIDA - MODO M�DIO
                pare
                caso 3:
                    dificuldade_Nome = "Dif�cil"
                    vetor[0] = 50 // GANHO DE PONTOS - MODO DIF�CIL
                    vetor[1] = 10 // GANHO DE MOEDA - MODO DIF�CIL
                    vetor[2] = 1 // VIDAS DISPON�VEIS - MODO DIF�CIL
                    vetor[3] = 15 // VALOR DA DICA - MODO DIF�CIL
                    vetor[4] = 25 // VALOR DE ELIMINAR QUEST�O - MODO DIF�CIL
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO DIF�CIL
                    vetor[6] = 45 // VALOR DA VIDA - MODO DIF�CIL
                pare
            }
            // Apresentando ao usu�rio os par�metros
            escreva("\n")
            escreva("Voc� selecionou o n�vel: " + dificuldade_Nome )
            escreva("\n")
            escreva("Este modo de jogo possui as seguintes regras: \n")
            escreva("\n")
            escreva("* GANHOS *\n")
            escreva("Ganho de pontos a cada acerto: " + vetor[0])
            escreva("\n")
            escreva("Ganho de moedas a cada acerto: " + vetor[1])
            escreva("\n")
            escreva("Quantidade de vidas: " + vetor[2])
            escreva("\n")
            escreva("\n")
            escreva(" * CUSTOS * \n")
            escreva("Dicas: " + vetor[3] + " moedas\n")
            escreva("Eliminar uma alternativa: " + vetor[4] + " moedas\n")
            escreva("NextQuestion: " + vetor[5] + " moedas\n")
            escreva("Vida extra: " + vetor[6])
            escreva("\n")
            
            faca {
                escreva("\n")
                escreva("Deseja continuar ? \n")
                escreva("[1] Sim  | [2] N�o\n")
                escreva("Escolha: ")
                leia(continuar)
                se (continuar != 1 e continuar != 2) {
                    escreva("Op��o inv�lida\n")  
                } 
            } enquanto (continuar != 1 e continuar != 2)
            
        } enquanto (continuar != 1)
        
        
        // Primeira pergunta
        escreva("\n")
        escreva("\n")
        escreva("Seja muito bem-vindo " + nome + ". Estamos muito felizes em ter voc� por aqui! Para embarcarmos em uma jornada de aprendizado e curiosidades, vamos primeiro ver qual o seu entendimento quando falamos sobre IA.\n")
        
        // VALORES QUE FICARAM A MOSTRA PARA O USUARIO
  inteiro vidas = vetor[2] 
  caracter alternativa // 
  inteiro resposta        
  inteiro escolhas

  inteiro volta // VARIAVEL PARA SAIR DA LOJA
  inteiro voltaRR // VARIAVEL PARA VOLTAR AS OP�OES DA LOJA
faca{
  faca{
    volta = 0 // A VARIAVEL (VOLTA) SEMPRE DEVE VOLTAR A 0 PARA QUE CONSIGA QUEBRAR O LA�O DE VOLTAR A QUEST�O DEPOIS DE SAIR DA QUEST�O /    
    mostra(pontos, moedas, vidas)
    escreva("\n")
    escreva("\nO que � a Intelig�ncia Artificial\n")
    escreva("\n")
    escreva("A. A �rea que busca desvendar a mente humana e recria-la nas m�quinas por meio de algoritmos e sistemas.\n")
    escreva("B. A �rea que busca reproduzir nas m�quinas por meio de algoritmos e sistemas, algumas fun��es cognitivas humanas.\n")
    escreva("C. A �rea que busca decifrar o c�digo gen�tico humano e replic�-lo nas m�quinas por meio de algoritmos e sistemas.\n")
    escreva("L. Loja\n")
    escreva("I. Invent�rio")
    escreva("\n")
    escreva("Escolha: ")
    leia(alternativa)
  } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
       
        se(alternativa == "i" ou alternativa == "I"){
          faca{
            faca{
           
           inteiro controlador
           escreva("Voc� selecionou o invent�rio\n")
           escreva("\n")
           escreva("Voc� possui:\n")
           escreva("\n")
           escreva("Dicas: "+dicas)
           escreva("\n")
           escreva("Eliminar Alternativa: "+eliminar)
           escreva("\n")
           escreva("NextQuestion: "+next)
           escreva("\n")
           escreva("[1] Dica  |  [2] Eliminar Alternativa  |  [3] NextQuestion  |  [4] Sair\n")
           escreva("Escolha: ")
           leia(escolhas)

            escolha (escolhas){
              caso 1:
                se(dicas >= 1){
                 escreva("\n")
                 escreva("* DICA *\n")
                 escreva("A intelig�ncia artificial buscar compreender o racioc�nio humano\n")
                 escreva("\n")
                 volta = 1         
                 dicas = dicas - 1        
                }senao{
                 escreva("\n")
                 escreva("Voc� tem 0 dicas dispon�veis")
                 escreva("\n")
                 controlador = 1
                }
              pare

              caso 2:
                se(eliminar >= 1){
                 escreva("\n")
                 escreva("! ! !")
                 escreva("A alternativa C est� incorreta!!!") 
                 escreva("! ! !")
                 escreva("\n") 
                 eliminar = eliminar - 1
                 volta = 1
                 }senao {
                  escreva("\n")
                  escreva("Voc� tem 0 Eliminar Alternativas dispon�veis")
                  escreva("\n")
                  controlador = 1
                 }
            pare

             caso 3:
                se(next >= 1){
                  volta = 0             
                  next = next - 1    
                }senao{
                 escreva("\n")
                 escreva("Voc� tem 0 NextQuestion dispon�veis")
                 escreva("\n")
                 controlador = 1
                }
              pare
             caso 4:
             escreva("")  
             volta = 1
             pare 
            }

          }enquanto(controlador == 1)
        }enquanto( escolhas != 1 e escolhas != 2 e escolhas != 3 e escolhas != 4)
      }
        se (alternativa == "L" ou alternativa == "l") {
          inteiro custo
          cadeia compra
          inteiro controle
         faca{  
          faca{
            faca{
              
            escreva("\n")
            escreva("* LOJA *\n")
            escreva(" [1] Vida  |  [2] Dicas  |  [3] Eliminar Alternativa  |  [4] NextQuestion  |  [5] Sair \n ")
            escreva("\n")
            escreva("Escolha o item que deseja comprar:")
            leia (alternativa)
            }enquanto(alternativa != 1 e alternativa != 2 e alternativa !=3 e alternativa !=4 e alternativa !=5)
              se(alternativa == 1){
                 compra = "Vida"
                 custo = vetor[6]
                 controle = 1

              } 
                senao se(alternativa == 2) {
                 compra = "Dicas"
                 custo = vetor[3]
                 controle = 1
              }
                senao se(alternativa == 3) {
                 compra = "Eliminar"
                 custo = vetor[4]
                 controle = 1
                }
                senao se(alternativa == 3){
                  compra = "Eliminar Alternativa"
                  custo = vetor[4]
                  controle = 1
                 }

                senao se(alternativa == 4){
                compra = "NextQuestion"
                custo = vetor[5]
                controle = 1
                }
                senao se(alternativa == 5){
                  controle = 0

                }
 
              
                escolha(controle){
                  caso 1:
                  faca{
                      escreva("\n")
                      escreva("Voc� escolheu "+compra)
                      escreva("\n")
                      escreva(compra+" custa "+custo)
                      escreva("\n")
                      escreva("Deseja comprar ? \n")
                      escreva("[1] Sim  |  [2] N�o \n")
                      escreva("Escolha: ")
                      leia(voltaRR)
                      }enquanto(voltaRR != 1 e voltaRR != 2)
                      se (voltaRR == 1){
                        se(moedas >= custo){
                          moedas = moedas - custo
                          se(alternativa == 1){
                            vidas = vidas + 1
                            voltaRR = 2
                            
                          }
                          se(alternativa == 2){
                            dicas = dicas + 1
                            voltaRR = 2
                          }
                          se(alternativa == 3){
                            eliminar = eliminar + 1
                           voltaRR = 2
                          }
                          se(alternativa == 4){
                            next = next + 1
                            voltaRR = 2
                          } 
                        } senao se(moedas < custo){
                          escreva("\n")
                          escreva("Voc� n�o tem moedas o suficiente\n")
                          escreva("\n")
                          voltaRR = 2
                        }
                      
                      }
                      pare                 

                  caso 0:
                  faca{
                    escreva("\n")
                    escreva("Deseja sair ? \n")
                    escreva("\n")
                    escreva("[1] Sim  |  [2] N�o\n")
                   escreva("Escolha:")
                   leia(alternativa)
                  }enquanto(alternativa != 1 e alternativa != 2)
                    se(alternativa == 1){
                      volta = 1
                     voltaRR = 0  
                    
                    }senao se(alternativa == 2){                 
                      voltaRR = 2
                    }                  
                    pare
                  
                }
          }enquanto(voltaRR == 2)

                       
        }enquanto(alternativa != 1 e alternativa != 2 e alternativa != 3 e alternativa != 4 e alternativa != 5)

        }
        senao se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C") {
            resposta = resposta1(alternativa)
            se (resposta == 1) {
                pontos = pontos + vetor[0]
                moedas = moedas + vetor[1]
                
            } senao {
                vidas = vidas - 1 
                
            }
        } 
   }enquanto(volta == 1)  
  se(vidas >= 1){
    escreva("Agora que j� sabemos o que � intelig�ncia artificial e o que essa �rea busca, vamos ver quando surgiu um dos primeiros vest�gios  desse conceito.\n")
    escreva("\n")
    faca{
  faca{
    volta = 0 // A VARIAVEL (VOLTA) SEMPRE DEVE VOLTAR A 0 PARA QUE CONSIGA QUEBRAR O LA�O DE VOLTAR A QUEST�O DEPOIS DE SAIR DA QUEST�O /    
    mostra(pontos, moedas, vidas)
    escreva("\n")
    escreva("\nQuando nasceu a ideia de intelig�ncia artificial ?\n")
    escreva("\n")
    escreva("A. Em meados de 1950, com a pesquisa pioneira de Alan Turing, a famosa  ''Computing Machinery and Intelligence''.\n")
    escreva("B. Em 1956, com a confer�ncia de Dartmouth, onde o termo ''intelig�ncia artificial'' foi oficialmente criado.\n")
    escreva("C. Com a ideia do ''Super computador de Botvinni'', em 1960..\n")
    escreva("L. Loja\n")
    escreva("I. Invent�rio")
    escreva("\n")
    escreva("Escolha: ")
    leia(alternativa)
  } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
       
        se(alternativa == "i" ou alternativa == "I"){
          faca{
            faca{
           
           inteiro controlador
           escreva("Voc� selecionou o invent�rio\n")
           escreva("\n")
           escreva("Voc� possui:\n")
           escreva("\n")
           escreva("Dicas: "+dicas)
           escreva("\n")
           escreva("Eliminar Alternativa: "+eliminar)
           escreva("\n")
           escreva("NextQuestion: "+next)
           escreva("\n")
           escreva("[1] Dica  |  [2] Eliminar Alternativa  |  [3] NextQuestion  |  [4] Sair\n")
           escreva("Escolha: ")
           leia(escolhas)

            escolha (escolhas){
              caso 1:
                se(dicas >= 1){
                 escreva("\n")
                 escreva("* DICA *\n")
                 escreva("A intelig�ncia artificial buscar compreender o racioc�nio humano\n")
                 escreva("\n")
                 volta = 1         
                 dicas = dicas - 1        
                }senao{
                 escreva("\n")
                 escreva("Voc� tem 0 dicas dispon�veis")
                 escreva("\n")
                 controlador = 1
                }
              pare

              caso 2:
                se(eliminar >= 1){
                 escreva("\n")
                 escreva("! ! !")
                 escreva("A alternativa C est� incorreta!!!") 
                 escreva("! ! !")
                 escreva("\n") 
                 eliminar = eliminar - 1
                 volta = 1
                 }senao {
                  escreva("\n")
                  escreva("Voc� tem 0 Eliminar Alternativas dispon�veis")
                  escreva("\n")
                  controlador = 1
                 }
            pare

             caso 3:
                se(next >= 1){
                  volta = 0             
                  next = next - 1    
                }senao{
                 escreva("\n")
                 escreva("Voc� tem 0 NextQuestion dispon�veis")
                 escreva("\n")
                 controlador = 1
                }
              pare
             caso 4:
             escreva("")  
             volta = 1
             pare 
            }

          }enquanto(controlador == 1)
        }enquanto( escolhas != 1 e escolhas != 2 e escolhas != 3 e escolhas != 4)
      }
        se (alternativa == "L" ou alternativa == "l") {
          inteiro custo
          cadeia compra
          inteiro controle
         faca{  
          faca{
            faca{
              
            escreva("\n")
            escreva("* LOJA *\n")
            escreva(" [1] Vida  |  [2] Dicas  |  [3] Eliminar Alternativa  |  [4] NextQuestion  |  [5] Sair \n ")
            escreva("\n")
            escreva("Escolha o item que deseja comprar:")
            leia (alternativa)
            }enquanto(alternativa != 1 e alternativa != 2 e alternativa !=3 e alternativa !=4 e alternativa !=5)
              se(alternativa == 1){
                 compra = "Vida"
                 custo = vetor[6]
                 controle = 1

              } 
                senao se(alternativa == 2) {
                 compra = "Dicas"
                 custo = vetor[3]
                 controle = 1
              }
                senao se(alternativa == 3) {
                 compra = "Eliminar"
                 custo = vetor[4]
                 controle = 1
                }
                senao se(alternativa == 3){
                  compra = "Eliminar Alternativa"
                  custo = vetor[4]
                  controle = 1
                 }

                senao se(alternativa == 4){
                compra = "NextQuestion"
                custo = vetor[5]
                controle = 1
                }
                senao se(alternativa == 5){
                  controle = 0

                }
 
              
                escolha(controle){
                  caso 1:
                  faca{
                      escreva("\n")
                      escreva("Voc� escolheu "+compra)
                      escreva("\n")
                      escreva(compra+" custa "+custo)
                      escreva("\n")
                      escreva("Deseja comprar ? \n")
                      escreva("[1] Sim  |  [2] N�o \n")
                      escreva("Escolha: ")
                      leia(voltaRR)
                      }enquanto(voltaRR != 1 e voltaRR != 2)
                      se (voltaRR == 1){
                        se(moedas >= custo){
                          moedas = moedas - custo
                          se(alternativa == 1){
                            vidas = vidas + 1
                            voltaRR = 2
                            
                          }
                          se(alternativa == 2){
                            dicas = dicas + 1
                            voltaRR = 2
                          }
                          se(alternativa == 3){
                            eliminar = eliminar + 1
                           voltaRR = 2
                          }
                          se(alternativa == 4){
                            next = next + 1
                            voltaRR = 2
                          } 
                        } senao se(moedas < custo){
                          escreva("\n")
                          escreva("Voc� n�o tem moedas o suficiente\n")
                          escreva("\n")
                          voltaRR = 2
                        }
                      
                      }
                      pare                 

                  caso 0:
                  faca{
                    escreva("\n")
                    escreva("Deseja sair ? \n")
                    escreva("\n")
                    escreva("[1] Sim  |  [2] N�o\n")
                   escreva("Escolha:")
                   leia(alternativa)
                  }enquanto(alternativa != 1 e alternativa != 2)
                    se(alternativa == 1){
                      volta = 1
                     voltaRR = 0  
                    
                    }senao se(alternativa == 2){                 
                      voltaRR = 2
                    }                  
                    pare
                  
                }
          }enquanto(voltaRR == 2)

                       
        }enquanto(alternativa != 1 e alternativa != 2 e alternativa != 3 e alternativa != 4 e alternativa != 5)

        }
        senao se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C") {
            resposta = resposta2(alternativa)
            se (resposta == 1) {
                pontos = pontos + vetor[0]
                moedas = moedas + vetor[1]
                
            } senao {
                vetor[2] = vetor[2] - 1 
                
            }
        } 
   }enquanto(volta == 1)  

  }senao{
    mostrafinal( pontos, moedas, vidas)
  }

  }
}