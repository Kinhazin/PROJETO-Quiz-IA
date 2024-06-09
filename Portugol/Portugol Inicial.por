programa {
    
    // Função para mostrar a quantidade de pontos e moedas ao jogador
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
        escreva("Você fez um total de: "+pontos+" pontos")
    }
    
    // Função para calcular a resposta da alternativa 1
    funcao inteiro resposta1(caracter alternativa) {
        inteiro resposta
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A Inteligência Artificial realmente busca algo na mente humana, porém não é desvendar e simula-lá nas máquinas. A mente humana por si só é muito complexa, única e abrangente, algo bastante improvável de se recriar, apenas 'simular'.\n")
            escreva("\n")
            escreva("O correto é a letra B - A inteligência artificial busca reproduzir nas máquinas por meio de algoritmos e sistemas, algumas funções cognitivas humanas, como por exemplo: A capacidade de raciocínio, tomada de decisão e aprendizado contínuo.\n")
            resposta = 0


        }
        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! A inteligência artificial busca reproduzir nas máquinas por meio de algoritmos e sistemas, algumas funções cognitivas humanas, como por exemplo: A capacidade de raciocínio, tomada de decisão e aprendizado contínuo.\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\n Você sabia que o primeiro computador digital eletrônico pesava cerca de incríveis 30 toneladas, contendo impressionantes 180 metros quadrados. O famoso ENIAC!\n")
            resposta = 1
        }
        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")          
            escreva("Incorreto. O projeto 'Genoma Humano' foi lançado em 1989 e teve seu fim em 2003, com o foco em decifrar o código humano, conseguindo desvendar incríveis 92% de nosso código genético, entretanto este não é o foco em geral da IA.\n")
            escreva("\n")
            escreva("O correto é a letra B - A inteligência artificial busca reproduzir nas máquinas por meio de algoritmos e sistemas, algumas funções cognitivas humanas, como por exemplo: A capacidade de raciocínio, tomada de decisão e aprendizado contínuo.\n")
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
            escreva("Correto! Um dos pioneiros na inteligência artificial antes mesmo de seu termo ter sido inventado. Alan Turing, com a criação de um artigo que explorava a possibilidade de uma máquina conseguir ser instruída a pensar, aprender e utilizar de sua própria inteligência para resolver problemas, igual a um humano.\n")
            escreva("\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\n Você sabia que Alan Turing é conhecido como o pai da computação ? Ele foi o inventor do famoso Teste de Turing, um experimento que avalia a capacidade de uma máquina de exibir comportamento inteligente que seja equivalente ao de um ser humano, ou seja, para saber se um computador pode se passar por um ser humano!\n")
            escreva("\n")
            resposta = 1

        }
        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Errado! Organizada por John McCarthy, Marvin Minsky, Nathaniel Rochester e Claude Shannon,  a conferência de Dartmouth tinha como   objetivo explorar a hipótese de que uma máquina pode ser programada para aprender a pensar como um humano. Apesar de tudo isso, este não foi o primeiro registro da ideia de Inteligência artificial, porém foi da criação do termo.\n")
            escreva("\n")
            escreva("O correto é a letra A - Alan Turing, um dos pioneiros na inteligência artificial antes mesmo de seu termo ter sido inventado, com a criação de um artigo que explorava a possibilidade de uma máquina conseguir ser instruída a pensar, aprender e utilizar de sua própria inteligência para resolver problemas, igual a um humano.\n")
            escreva("\n")
            resposta = 0
        }
        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")          
            escreva("O Campeão mundial de xadrez Botvinnik tinha um projeto, o supercomputador Botvinnik! Seu objetivo era criar um programa de xadrez com a capacidade de reproduzir os processos do cérebro humano, porém essa ideia surgiu em 1960, assim não sendo a primeira.\n")
            escreva("\n")
            escreva("O correto é a letra A. Alan Turing, um dos pioneiros na inteligência artificial antes mesmo de seu termo ter sido inventado, com a criação de um artigo que explorava a possibilidade de uma máquina conseguir ser instruída a pensar, aprender e utilizar de sua própria inteligência para resolver problemas, igual a um humano.\n")
            resposta = 0
        }
        retorne resposta
    }

  
    
    
    funcao inicio() {
        
        cadeia nome // VARIAVEL PARA GUARDAR O NOME DO USUARIO
        inteiro Dificuldade // VARIAVEL PARA ESCOLHER A DIFICULDADE E CONFIRMAR
        inteiro continuar // VARIAVEL DE CONTROELE (VARIAVEL NECESSARIA, POIS ESSE CODIGO APRESENTA BASTATE LAÇO DE REPETIÇÃO, POIS O PORTUGOL NAO ACEITA PASSAGEM DE VALOR DE VETORES EM FUNÇÃO)
        inteiro pontos = 0 // PONTOS DO USUARIO
        inteiro moedas = 5000 // MOEDAS DO USUARIO
        inteiro dicas = 1 // QUANTIDADE DE DICAS QUE O USUARIO POSSUI
        inteiro eliminar = 1 // QUANTIDADE DE ELIMINAR ALTERNATIVAS QUE O USUARIO POSSUI
        inteiro next = 1 // QUANTIDADE DE NEXTQUESTION QUE O USUARIO POSSUI
       
        
        // Apresentação do Quiz
        escreva ("Olá participante, tudo bem ?\n")
        escreva("Seja muito bem vindo ao nosso Quiz: *INTELIGÊNCIA ARTIFICIAL - O NOVO NORMAL*\n")
        escreva("Estamos muito felizes de ter você por aqui! Esperamos que o conteudo desse quiz possa contribuir em seus estudos e entedimento sobre a I.A, a tecnologia do momento\n")
        escreva("\n")
        escreva("Para começarmos, como podemos te chamar?\n")
        escreva("Digite seu nome: ")
        leia(nome)
        escreva("\n")
        escreva("Seja muito bem - vindo, " + nome + ".\n")
        escreva("Antes de darmos inicio ao quiz vamos falar de como ele funciona, já que não se trata de um Quiz chato e normal, e sim de um interativo e divertido!\n")
        escreva("\n")
        escreva(" * REGRAS * \n")
        escreva("\n")
        escreva(" • O jogador possui x números de vida, dependendo do modo de jogo!\n")
        escreva(" • A cada erro, você perde 1 vida, então tome cuidado, pois ao chegar a 0 vidas é game over.\n")
        escreva(" • A cada acerto, além de passar para a próxima pergunta, você ganha pontos e moedas.\n")       
        escreva(" • Você pode trocar suas moedas por #Dicas - #Vida Extra - #NextQuestion - #Eliminar Alternativa.\n")
        escreva(" • E tem mais! A cada questão acertada, você libera uma curiosidade sobre o mundo da tecnologia!\n")
        escreva("\n")
        escreva(" * REGRAS * \n")
        
        // Escolhendo a dificuldade
        faca {
            escreva("\n")
            escreva("Agora chegou o momento de decidir a dificuldade do Quiz\n")
            faca {
                escreva("\n")
                escreva("Escolha o nível de dificuldade: \n")
                escreva("Digite: [1] Fácil | [2] Médio | [3] Difícil\n")
                escreva("Escolha: ")
                leia(Dificuldade)
                se (Dificuldade != 1 e Dificuldade != 2 e Dificuldade != 3) {
                    escreva("Opção inválida! Por favor, escolha novamente.\n")
                }
            } enquanto (Dificuldade != 1 e Dificuldade != 2 e Dificuldade != 3)
            
            cadeia dificuldade_Nome
            inteiro vetor[7]
            escolha (Dificuldade) {
                caso 1:
                    dificuldade_Nome = "Fácil"
                    vetor[0] = 10 // GANHO DE PONTOS - MODO FÁCIL
                    vetor[1] = 20 // GANHO DE MOEDA - MODO FÁCIL
                    vetor[2] = 5 // VIDAS DISPONÍVEIS - MODO FÁCIL
                    vetor[3] = 15 // VALOR DA DICA - MODO FÁCIL
                    vetor[4] = 25 // VALOR DE ELIMINAR QUESTÃO - MODO FÁCIL
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO FÁCIL
                    vetor[6] = 45 // VALOR DA VIDA - MODO FÁCIL
                pare
                caso 2:
                    dificuldade_Nome = "Médio"
                    vetor[0] = 25 // GANHO DE PONTOS - MODO MÉDIO
                    vetor[1] = 15 // GANHO DE MOEDA - MODO MÉDIO
                    vetor[2] = 3 // VIDAS DISPONÍVEIS - MODO MÉDIO
                    vetor[3] = 15 // VALOR DA DICA - MODO MÉDIO
                    vetor[4] = 25 // VALOR DE ELIMINAR QUESTÃO - MODO MÉDIO
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO MÉDIO
                    vetor[6] = 45 // VALOR DA VIDA - MODO MÉDIO
                pare
                caso 3:
                    dificuldade_Nome = "Difícil"
                    vetor[0] = 50 // GANHO DE PONTOS - MODO DIFÍCIL
                    vetor[1] = 10 // GANHO DE MOEDA - MODO DIFÍCIL
                    vetor[2] = 1 // VIDAS DISPONÍVEIS - MODO DIFÍCIL
                    vetor[3] = 15 // VALOR DA DICA - MODO DIFÍCIL
                    vetor[4] = 25 // VALOR DE ELIMINAR QUESTÃO - MODO DIFÍCIL
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO DIFÍCIL
                    vetor[6] = 45 // VALOR DA VIDA - MODO DIFÍCIL
                pare
            }
            // Apresentando ao usuário os parâmetros
            escreva("\n")
            escreva("Você selecionou o nível: " + dificuldade_Nome )
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
                escreva("[1] Sim  | [2] Não\n")
                escreva("Escolha: ")
                leia(continuar)
                se (continuar != 1 e continuar != 2) {
                    escreva("Opção inválida\n")  
                } 
            } enquanto (continuar != 1 e continuar != 2)
            
        } enquanto (continuar != 1)
        
        
        // Primeira pergunta
        escreva("\n")
        escreva("\n")
        escreva("Seja muito bem-vindo " + nome + ". Estamos muito felizes em ter você por aqui! Para embarcarmos em uma jornada de aprendizado e curiosidades, vamos primeiro ver qual o seu entendimento quando falamos sobre IA.\n")
        
        // VALORES QUE FICARAM A MOSTRA PARA O USUARIO
  inteiro vidas = vetor[2] 
  caracter alternativa // 
  inteiro resposta        
  inteiro escolhas

  inteiro volta // VARIAVEL PARA SAIR DA LOJA
  inteiro voltaRR // VARIAVEL PARA VOLTAR AS OPÇOES DA LOJA
faca{
  faca{
    volta = 0 // A VARIAVEL (VOLTA) SEMPRE DEVE VOLTAR A 0 PARA QUE CONSIGA QUEBRAR O LAÇO DE VOLTAR A QUESTÃO DEPOIS DE SAIR DA QUESTÃO /    
    mostra(pontos, moedas, vidas)
    escreva("\n")
    escreva("\nO que é a Inteligência Artificial\n")
    escreva("\n")
    escreva("A. A área que busca desvendar a mente humana e recria-la nas máquinas por meio de algoritmos e sistemas.\n")
    escreva("B. A área que busca reproduzir nas máquinas por meio de algoritmos e sistemas, algumas funções cognitivas humanas.\n")
    escreva("C. A área que busca decifrar o código genético humano e replicá-lo nas máquinas por meio de algoritmos e sistemas.\n")
    escreva("L. Loja\n")
    escreva("I. Inventário")
    escreva("\n")
    escreva("Escolha: ")
    leia(alternativa)
  } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
       
        se(alternativa == "i" ou alternativa == "I"){
          faca{
            faca{
           
           inteiro controlador
           escreva("Você selecionou o inventário\n")
           escreva("\n")
           escreva("Você possui:\n")
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
                 escreva("A inteligência artificial buscar compreender o raciocínio humano\n")
                 escreva("\n")
                 volta = 1         
                 dicas = dicas - 1        
                }senao{
                 escreva("\n")
                 escreva("Você tem 0 dicas disponíveis")
                 escreva("\n")
                 controlador = 1
                }
              pare

              caso 2:
                se(eliminar >= 1){
                 escreva("\n")
                 escreva("! ! !")
                 escreva("A alternativa C está incorreta!!!") 
                 escreva("! ! !")
                 escreva("\n") 
                 eliminar = eliminar - 1
                 volta = 1
                 }senao {
                  escreva("\n")
                  escreva("Você tem 0 Eliminar Alternativas disponíveis")
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
                 escreva("Você tem 0 NextQuestion disponíveis")
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
                      escreva("Você escolheu "+compra)
                      escreva("\n")
                      escreva(compra+" custa "+custo)
                      escreva("\n")
                      escreva("Deseja comprar ? \n")
                      escreva("[1] Sim  |  [2] Não \n")
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
                          escreva("Você não tem moedas o suficiente\n")
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
                    escreva("[1] Sim  |  [2] Não\n")
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
    escreva("Agora que já sabemos o que é inteligência artificial e o que essa área busca, vamos ver quando surgiu um dos primeiros vestígios  desse conceito.\n")
    escreva("\n")
    faca{
  faca{
    volta = 0 // A VARIAVEL (VOLTA) SEMPRE DEVE VOLTAR A 0 PARA QUE CONSIGA QUEBRAR O LAÇO DE VOLTAR A QUESTÃO DEPOIS DE SAIR DA QUESTÃO /    
    mostra(pontos, moedas, vidas)
    escreva("\n")
    escreva("\nQuando nasceu a ideia de inteligência artificial ?\n")
    escreva("\n")
    escreva("A. Em meados de 1950, com a pesquisa pioneira de Alan Turing, a famosa  ''Computing Machinery and Intelligence''.\n")
    escreva("B. Em 1956, com a conferência de Dartmouth, onde o termo ''inteligência artificial'' foi oficialmente criado.\n")
    escreva("C. Com a ideia do ''Super computador de Botvinni'', em 1960..\n")
    escreva("L. Loja\n")
    escreva("I. Inventário")
    escreva("\n")
    escreva("Escolha: ")
    leia(alternativa)
  } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
       
        se(alternativa == "i" ou alternativa == "I"){
          faca{
            faca{
           
           inteiro controlador
           escreva("Você selecionou o inventário\n")
           escreva("\n")
           escreva("Você possui:\n")
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
                 escreva("A inteligência artificial buscar compreender o raciocínio humano\n")
                 escreva("\n")
                 volta = 1         
                 dicas = dicas - 1        
                }senao{
                 escreva("\n")
                 escreva("Você tem 0 dicas disponíveis")
                 escreva("\n")
                 controlador = 1
                }
              pare

              caso 2:
                se(eliminar >= 1){
                 escreva("\n")
                 escreva("! ! !")
                 escreva("A alternativa C está incorreta!!!") 
                 escreva("! ! !")
                 escreva("\n") 
                 eliminar = eliminar - 1
                 volta = 1
                 }senao {
                  escreva("\n")
                  escreva("Você tem 0 Eliminar Alternativas disponíveis")
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
                 escreva("Você tem 0 NextQuestion disponíveis")
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
                      escreva("Você escolheu "+compra)
                      escreva("\n")
                      escreva(compra+" custa "+custo)
                      escreva("\n")
                      escreva("Deseja comprar ? \n")
                      escreva("[1] Sim  |  [2] Não \n")
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
                          escreva("Você não tem moedas o suficiente\n")
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
                    escreva("[1] Sim  |  [2] Não\n")
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