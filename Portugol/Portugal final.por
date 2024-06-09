programa {

  // APRESENTAÇÃO DO QUIZ
  funcao comeco(){
        cadeia nome // Nome do usuário
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
  }

  // ESCOLHENDO O MODO DE JOGO
  funcao inteiro mododejogo() {
    inteiro Dificuldade
    faca {
        escreva("\n")
        escreva("Agora chegou o momento de decidir a dificuldade do Quiz\n")
        escreva("\n")
        escreva("Escolha o nível de dificuldade: \n")
        escreva("Digite: [1] Fácil | [2] Médio | [3] Difícil\n")
        escreva("Escolha: ")
        leia(Dificuldade)
        se (Dificuldade != 1 e Dificuldade != 2 e Dificuldade != 3) {
            escreva("Opção inválida! Por favor, escolha novamente.\n")
        }
    } enquanto (Dificuldade != 1 e Dificuldade != 2 e Dificuldade != 3)
    retorne Dificuldade
}

  // NOME DE CADA DIFICULDADE
    funcao cadeia NomeDaDificuldade(inteiro Dificuldade){
      cadeia dificuldade_Nome
      escolha(Dificuldade){
        caso 1:
          dificuldade_Nome = "Fácil"
          pare
        
        caso 2:
          dificuldade_Nome = "Médio"
          pare
        
        caso 3:
            dificuldade_Nome = "Difícil"
            pare
      }
      retorne dificuldade_Nome
    }

  // CADA MODO DE JOGO E SEUS PARAMETROS.
  funcao inteiro parametros(inteiro Dificuldade){
    inteiro vetor[7]
    escolha (Dificuldade) {
                caso 1:

                    vetor[0] = 10 // GANHO DE PONTOS - MODO FÁCIL.
                    vetor[1] = 20 // GANHO DE MOEDA - MODO FÁCIL.
                    vetor[2] = 5 // VIDAS DISPONÍVEIS - MODO FÁCIL.
                    vetor[3] = 15 // VALOR DA DICA - MODO FÁCIL.
                    vetor[4] = 25 // VALOR DE ELIMINAR QUESTÃO - MODO FÁCIL.
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO FÁCIL.
                    vetor[6] = 45 // VALOR DA VIDA - MODO FÁCIL.
                pare
                caso 2:
              
                    vetor[0] = 25 // GANHO DE PONTOS - MODO MÉDIO.
                    vetor[1] = 15 // GANHO DE MOEDA - MODO MÉDIO.
                    vetor[2] = 3 // VIDAS DISPONÍVEIS - MODO MÉDIO.
                    vetor[3] = 15 // VALOR DA DICA - MODO MÉDIO.
                    vetor[4] = 25 // VALOR DE ELIMINAR QUESTÃO - MODO MÉDIO.
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO MÉDIO.
                    vetor[6] = 45 // VALOR DA VIDA - MODO MÉDIO.
                pare
                caso 3:
                 
                    vetor[0] = 50 // GANHO DE PONTOS - MODO DIFÍCIL.
                    vetor[1] = 10 // GANHO DE MOEDA - MODO DIFÍCIL.
                    vetor[2] = 1 // VIDAS DISPONÍVEIS - MODO DIFÍCIL.
                    vetor[3] = 15 // VALOR DA DICA - MODO DIFÍCIL.
                    vetor[4] = 25 // VALOR DE ELIMINAR QUESTÃO - MODO DIFÍCIL.
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO DIFÍCIL.
                    vetor[6] = 45 // VALOR DA VIDA - MODO DIFÍCIL.
                pare
            }
            retorne vetor
  }
  // APRESENTANDO CADA PARAMETRO PARA O USUARIO.
  funcao inteiro confirmar(inteiro vetor[], inteiro continuar, cadeia dificuldade_Nome){
              
              
              // APRESENTADO AO USUÁRIO OS PARÂMETROS.
              escreva("\n")
              escreva("Você selecionou o nível: " + dificuldade_Nome )
              escreva("\n")
              escreva("\n")
              escreva("\n")
              escreva("* GANHOS *\n")
              escreva("Ganho de pontos a cada acerto: " + vetor[0])
              escreva("\n")
              escreva("Ganho de moedas a cada acerto: " + vetor[1])
              escreva("\n")
              escreva(" " + vetor[2])
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
            retorne continuar
          }
  // FUNÇÃO RESPONSÁVEL POR ESCOLHER O MODO DE JOGO, CASO O USUÁRIO ESCOLHA (2)NÃO, O USUÁRIO VOLTA PARA TELA PARA  ESCOLHER ENTRE AS 3 DIFICULDADES.
  funcao inteiro EscolhendoModo(inteiro vetor[]){
      inteiro Dificuldade
      cadeia dificuldade_Nome 
      inteiro continuar
      faca{
        Dificuldade = mododejogo()
        dificuldade_Nome = NomeDaDificuldade(Dificuldade)  
        vetor = parametros(Dificuldade)                    
        continuar = confirmar(vetor, continuar, dificuldade_Nome)
      }enquanto(continuar != 1)

    retorne vetor
  }


  // PARAMETROS PARA MOSTRAR AO USUARIO SEUS PONTOS, MOEDAS E VIDAS.
  funcao inteiro EstoqueGame (inteiro vetor[]){
    inteiro GuardandoGame[7]

    GuardandoGame [0] =  0// PONTOS.
    GuardandoGame [1] =  0// MOEDAS.
    GuardandoGame [2] =  vetor[2]// VIDAS.
    GuardandoGame [3] = 0 // DICAS.
    GuardandoGame [4] = 0 // ELIMINAR ALTERNATIVA.
    GuardandoGame [5] = 0 // NEXTQUESTION.
    GuardandoGame [6] = 0 // AUXILIAR PARA O NEXTQUESTION.
    retorne GuardandoGame
  }

// PARAMETROS PARA MOSTRAR AO USUARIO.
  funcao mostra(inteiro GuardandoGame[]){
    escreva("\n")
    escreva("\n")
    escreva("Pontos: ",GuardandoGame[0],"\n") // MOSTRANDO OS PONTOS.
    escreva("Moedas: ",GuardandoGame[1],"\n") // MOSTRANDO AS MOEDAS.
    escreva("Vidas: ",GuardandoGame[2],"\n") // MOSTRANDO AS VIDAS.
  }

// ENUNCIADO DA PRIMEIRA PERGUNTA.
  funcao cadeia EnunciadoPergunta1(){
    cadeia alternativa
    faca{
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
    retorne alternativa  
  }

  // RESPOSTA PARA A PRIMEIRA PERGUNTA.
  funcao inteiro resposta1(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A Inteligência Artificial realmente busca algo na mente humana, porém não é desvendar e sim simula-lá nas máquinas. A mente humana por si só é muito complexa, única e abrangente, algo bastante improvável de se recriar, apenas 'simular'.\n")
            escreva("\n")
            escreva("O correto é a letra B - A inteligência artificial busca reproduzir nas máquinas por meio de algoritmos e sistemas, algumas funções cognitivas humanas, como por exemplo: A capacidade de raciocínio, tomada de decisão e aprendizado contínuo.\n")
            resp = 0
        }
        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto. A inteligência artificial busca reproduzir nas máquinas por meio de algoritmos e sistemas, algumas funções cognitivas humanas, como por exemplo: A capacidade de raciocínio, tomada de decisão e aprendizado contínuo.\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nVocê sabia que o primeiro computador digital eletrônico pesava cerca de incríveis 30 toneladas, contendo impressionantes 180 metros quadrados. O famoso ENIAC!\n")
            escreva("\n")
            resp = 1
        }
        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")          
            escreva("Incorreto. O projeto 'Genoma Humano' foi lançado em 1989 e teve seu fim em 2003, com o foco em decifrar o código humano, conseguindo desvendar incríveis 92% de nosso código genético, entretanto este não é o foco em geral da IA.\n")
            escreva("\n")
            escreva("O correto é a letra B - A inteligência artificial busca reproduzir nas máquinas por meio de algoritmos e sistemas, algumas funções cognitivas humanas, como por exemplo: A capacidade de raciocínio, tomada de decisão e aprendizado contínuo.\n")
            resp = 0                
    }
    retorne resp
  }

// ENUNCIADO DA SEGUNDA PERGUNTA.
  funcao cadeia EnunciadoPergunta2(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQuando nasceu a ideia de inteligência artificial\n")
      escreva("\n")
      escreva("A. Em meados de 1950, com a pesquisa pioneira de Alan Turing, a famosa *Computing Machinery and Intelligence*\n")
      escreva("B. Em 1956, com a conferência de Dartmouth, onde o termo *inteligência artificial* foi oficialmente criado\n")
      escreva("C. Com a ideia do *Super computador de Botvinnik*, em 1960\n")
      escreva("L. Loja\n")
      escreva("I. Inventário")
      escreva("\n")
      escreva("Escolha: ")
      leia(alternativa)
    } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
    retorne alternativa  
  }

  // RESPOSTA PARA A SEGUNDA PERGUNTA.
  funcao inteiro resposta2(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto. Um dos pioneiros na inteligência artificial antes mesmo de seu termo ter sido inventado. Alan Turing, com a criação de um artigo que explorava a possibilidade de uma máquina conseguir ser instruída a pensar, aprender e utilizar de sua própria inteligência para resolver problemas, igual a um humano.\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nVocê sabia que Alan Turing é conhecido como o pai da computação ? Ele foi o inventor do famoso Teste de Turing, um experimento que avalia a capacidade de uma máquina de exibir comportamento inteligente que seja equivalente ao de um ser humano, ou seja, para saber se um computador pode se passar por um ser humano!\n")
            escreva("\n")
            resp = 1
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. Organizada por John McCarthy, Marvin Minsky, Nathaniel Rochester e Claude Shannon, a conferência de Dartmouth tinha como objetivo explorar a hipótese de que uma máquina pode ser programada para aprender a pensar como um humano. Apesar de tudo isso, este não foi o primeiro registro da ideia de Inteligência artificial, porém foi da criação do termo.\n")           
            escreva("\n")
            escreva("O correto é a letra A - Alan Turing, um dos pioneiros na inteligência artificial antes mesmo de seu termo ter sido inventado, com a criação de um artigo que explorava a possibilidade de uma máquina conseguir ser instruída a pensar, aprender e utilizar de sua própria inteligência para resolver problemas, igual a um humano\n")
            resp = 0
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")          
            escreva("Incorreto. O Campeão mundial de xadrez Botvinnik tinha um projeto, o supercomputador Botvinnik! Seu objetivo era criar um programa de xadrez com a capacidade de reproduzir os processos do cérebro humano, porém essa ideia surgiu em 1960, assim não sendo a primeira.\n")
            escreva("\n")
            escreva("O correto é a letra A - Alan Turing, um dos pioneiros na inteligência artificial antes mesmo de seu termo ter sido inventado, com a criação de um artigo que explorava a possibilidade de uma máquina conseguir ser instruída a pensar, aprender e utilizar de sua própria inteligência para resolver problemas, igual a um humano\n")
            resp = 0                
    }
    retorne resp
  }

// ENUNCIADO PARA A TERCEIRA PERGUNTA.
    funcao cadeia EnunciadoPergunta3(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual foi a primeira conferência voltada para Inteligência Artificial\n")
      escreva("\n")
      escreva("A. A WWDC (Apple Worldwide Developers Conference)\n")
      escreva("B. A International Conference on Machine Learning\n")
      escreva("C. A conferência de Dartmouth\n")
      escreva("L. Loja\n")
      escreva("I. Inventário")
      escreva("\n")
      escreva("Escolha: ")
      leia(alternativa)
    } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
    retorne alternativa  
  }

  // RESPOSTA PARA A TERCEIRA PERGUNTA.
  funcao inteiro resposta3(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto! A WWDC (Apple Worldwide Developers Conference) é Organizada pela Apple, sendo um evento anual voltado para desenvolvedores de software, onde a empresa revela as últimas atualizações em seus sistemas operacionais e apresenta novas ferramentas e tecnologias para desenvolvedores\n")
            escreva("\n")
            escreva("O correto é a letra C - A famosa conferência de Dartmouth, realizada em 1956 com o intuito de explorar a hipótese de que ''toda característica do aprendizado ou qualquer outra característica da inteligência pode, em princípio, ser tão precisamente descrita, que uma máquina pode ser feita para simulá-la'', ou seja, uma máquina pode ser programada a aprender a pensar como um humano. Vale lembrar que foi nessa conferência onde o termo “Inteligência Artificial” foi criado.\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto! A International Conference on Machine Learning é uma das principais conferências acadêmicas voltadas para machine learning. Sendo realizada anualmente reunindo pesquisadores, acadêmicos e profissionais de todo o mundo para apresentar e discutir os avanços mais recentes da tecnologia, contudo por mais que seja uma conferência voltada especialmente para a área, entretanto ela não foi a primeira.\n")           
            escreva("\n")
            escreva("O correto é a letra C - A famosa conferência de Dartmouth, realizada em 1956 com o intuito de explorar a hipótese de que ''toda característica do aprendizado ou qualquer outra característica da inteligência pode, em princípio, ser tão precisamente descrita, que uma máquina pode ser feita para simulá-la'', ou seja, uma máquina pode ser programada a aprender a pensar como um humano. Vale lembrar que foi nessa conferência onde o termo “Inteligência Artificial” foi criado.\n")
            resp = 0
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! A famosa conferência de Dartmouth, realizada em 1956 com o intuito de explorar a hipótese de que ''toda característica do aprendizado ou qualquer outra característica da inteligência pode, em princípio, ser tão precisamente descrita que uma máquina pode ser feita para simulá-la'', ou seja, uma máquina pode ser programada a aprender e pensar como um humano. Vale lembrar que foi nessa conferência on de o termo “Inteligência Artificial” foi criado.\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nJá que estamos falando de pioneiros no campo da IA, você sabia que a Universidade Federal da Paraíba foi a primeira instituição pública do país a oferecer uma graduação em Ciência de Dados e Inteligência Artificial? O curso é ofertado desde 2020 e tem o Enem como forma de ingressar.\n")
            escreva("\n")
            resp = 1              
    }
    retorne resp
  }

  // ENUNCIADO DA QUARTA PERGUNTA.
    funcao cadeia EnunciadoPergunta4(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual foi o primeiro programa a usar Inteligência Artificial\n")
      escreva("\n")
      escreva("A. General Problem Solver\n")
      escreva("B. Logic Theorist\n")
      escreva("C. Eliza\n")
      escreva("L. Loja\n")
      escreva("I. Inventário")
      escreva("\n")
      escreva("Escolha: ")
      leia(alternativa)
    } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
    retorne alternativa  
  }

  // RESPOSTA PARA A QUARTA PERGUNTA.
  funcao inteiro resposta4(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto! Criado em 1958 com o intuito de resolver problemas de forma semelhante a um humano, através das seguintes etapas: Receber o problema, ações, pré-condições e objetivo a ser alcançado; Tentar alcançar o objetivo final se baseando na pré-condição de cada ação; Ao final ele apresenta a sequência ideal para alcançar o objetivo final. O programa deu o pontapé inicial para o estudo do pensamento computacional, entretanto não foi o primeiro programa a se utilizar da IA.\n")
            escreva("\n")
            escreva("O correto é a letra B - Logic Theorist, lançada em 1956 e apresentada ao mundo por Allen Newell e Cliff Shaw, tinha o objetivo provar teoremas matemáticos com base em um conjunto de regras e blocos de lógica. Assim, pela primeira vez uma máquina estava sendo usada para resolver tarefas intelectuais\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
           escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto. Logic Theorist, lançada em 1956 e apresentada ao mundo por Allen Newell e Cliff Shaw, tinha o objetivo provar teoremas matemáticos com base em um conjunto de regras e blocos de lógica. Assim, pela primeira vez uma máquina estava sendo usada para resolver tarefas intelectuais\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nVocê sabia que a inteligência artificial já ganhou de um campeão mundial de xadrez? No dia 10 de fevereiro de 1996, o enxadrista Garry Kasparov, tido por alguns como o maior de todos os tempos, perdia uma partida de xadrez para o supercomputador da IBM Deep Blue.\n")
            escreva("\n")
            resp = 1   
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. Criada em 1966 pelo matemático Joseph Weizenbaum, Eliza é o primeiro software de processamento de linguagem natural. Seu objetivo era funcionar como uma espécie de psicóloga virtual. Na prática, Weizenbaum criou um software capaz de identificar 250 tipos de frases e enganar o interlocutor usando trechos das perguntas em suas respostas\n")
            escreva("\n")
            escreva("O correto é a letra B - Logic Theorist, lançada em 1956 e apresentada ao mundo por Allen Newell e Cliff Shaw, tinha o objetivo provar teoremas matemáticos com base em um conjunto de regras e blocos de lógica. Assim, pela primeira vez uma máquina estava sendo usada para resolver tarefas intelectuais.\n")
            resp = 0              
    }
    retorne resp
  }

  // ENUNCIADO DA QUINTA PERGUNTA.
    funcao cadeia EnunciadoPergunta5(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual das seguintes áreas não é um campo de estudo da IA\n")
      escreva("\n")
      escreva("A. Processamento de Linguagem Natural\n")
      escreva("B. Análise de dados\n")
      escreva("C. Redes Neurais\n")
      escreva("L. Loja\n")
      escreva("I. Inventário")
      escreva("\n")
      escreva("Escolha: ")
      leia(alternativa)
    } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
    retorne alternativa  
  }

  // RESPOSTA PARA A QUINTA PERGUNTA.
  funcao inteiro resposta5(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. O processamento de linguagem natural é uma das áreas de estudo da IA, essa área trata da habilidade de interpretar e processar a linguagem humana natural por sistemas computacionais. Um ótimo exemplo de sua aplica ção é o Google tradutor, sendo capaz de captar a fala do usuário e traduzir para a linguagem de sua escolha\n")
            escreva("\n")
            escreva("O correto é a letra B - Apesar da IA ser utilizada na análise de dados, a Administração de bancos de dados não é uma área de estudo da inteligência artificial, pois concentra-se principalmente no gerenciamento e na manutenção eficiente dos sistemas de banco de dados\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
           escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto. Apesar da IA ser utilizada na análise de dados, a Administração de bancos de dados não é uma área de estudo da inteligência artificial, pois concentra-se principalmente no gerenciamento e na manutenção eficiente dos sistemas de banco de dados\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nVocê sabia que o banco do Itaú utiliza Inteligência Artificial para auxílio na análise de dados dos documentos jurídicos?A IA é treinada para identificar informações relevantes, como cláusulas, datas e partes envolvidas\n")
            escreva("\n")
            resp = 1   
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto! Redes Neurais é uma das áreas de estudo da IA, essa área conta com algoritmos especializados em reconhecimento de padrões, classificando dados de acordo com suas similaridades, seja por meio de imagens, vídeos, textos ou sons. Em sua essência, é um método  que ensina a máquina a processar dados de uma forma inspirada pelo cérebro humano. Alguns exemplos de suas aplicações: Diagnóstico médico feito pela classificação de imagens; Previsões financeiras feitas pelo processamento de dados históricos de instrumentos financeiros\n")
            escreva("\n")
            escreva("O correto é a letra B - Apesar da IA ser utilizada na análise de dados, a Administração de bancos de dados não é uma área de estudo da inteligência artificial, pois concentra-se principalmente no gerenciamento e na manutenção eficiente dos sistemas de banco de dados\n")
            resp = 0              
    }
    retorne resp
  }

  // ENUNCIADO PARA DA SEXTA PERGUNTA.
  funcao cadeia EnunciadoPergunta6(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQuais das plataformas abaixo usam inteligência artificial para contribuir na educação do usuário\n")
      escreva("\n")
      escreva("A. Knewton\n")
      escreva("B. Udemy\n")
      escreva("C. Pluralsight\n")
      escreva("L. Loja\n")
      escreva("I. Inventário")
      escreva("\n")
      escreva("Escolha: ")
      leia(alternativa)
    } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
    retorne alternativa  
  }

  // RESPOSTA PARA A SEXTA PERGUNTA.
  funcao inteiro resposta6(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto. A Knewton é uma plataforma de ensino adaptativo que usa IA para adaptar o conteúdo educacional às necessidades e ritmo de cada aluno, concedendo uma experiência de aprendizagem mais proveitosa\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade: Você sabia que a plataforma de idiomas Duolingo utiliza inteligência artificial para contribuir na geração de frases ? ''Large Language Mode'' é o nome da tecnologia que permite prever o jeito mais provável de completar uma frase (a mesma tecnologia da caixa de sugestão de palavras quando estamos escrevendo no celular). Utilizando dessa tecnologia, a plataforma consegue gerar uma quantidade massiva de conteúdo, sem perder a qualidade\n")
            escreva("\n")
            resp = 1 
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A Udemy é uma plataforma de aprendizado online que oferece uma vasta variedade de cursos em diferentes áreas do conhecimento. Por mais que a plataforma apresente alguns cursos voltados para inteligência artificial, a plataforma em si não apresenta uso da IA voltado para a educação de seus alunos\n")
            escreva("\n")
            escreva("O correto é a letra A - Correto! A Knewton é uma plataforma de ensino adaptativo que usa IA para adaptar o conteúdo educacional às necessidades e ritmo de cada aluno, concedendo uma experiência de aprendizagem mais proveitosa\n")
            resp = 0    
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto! A Pluralsight é uma plataforma de aprendizado online que oferece uma variedade de cursos relacionados à tecnologia da informação.Por mais que a plataforma apresenta bastante cursos voltados para inteligência artificial, a plataforma em si não apresenta uso da IA voltado para a educação de seus alunos\n")
            escreva("\n")
            escreva("O correto é a letra A - Correto! A Knewton é uma plataforma de ensino adaptativo que usa IA para adaptar o conteúdo educacional às necessidades e ritmo de cada aluno, concedendo uma experiência de aprendizagem mais proveitosa\n")
            resp = 0              
    }
    retorne resp
  }

  //ENUNCIADO PARA A SÉTIMA PERGUNTA.
  funcao cadeia EnunciadoPergunta7(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual é o nome do Software descrito acima\n")
      escreva("\n")
      escreva("A. Google Classroom\n")
      escreva("B. Student\n")
      escreva("C. Khan academy\n")
      escreva("L. Loja\n")
      escreva("I. Inventário")
      escreva("\n")
      escreva("Escolha: ")
      leia(alternativa)
    } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
    retorne alternativa  
  }

  // RESPOSTA PARA A SÉTIMA PERGUNTA.
  funcao inteiro resposta7(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. Lançado em 2014, a plataforma educacional permite que professores e estudantes compartilhem tarefas, materiais didáticos, façam trabalhos, etc, algo similar a uma sala de aula, como o próprio nome diz. A plataforma utiliza-se sim de inteligência artificial para a criação de aulas, avaliações, dicas e análise de desempenho, porém não é o software descrito acima\n")
            escreva("\n")
            escreva("O correto é a letra B - Criado em 1964 na Universidade de Massachusetts, um dos primeiros softwares a utilizar IA, no qual resolvia problemas matemáticos descritos em palavras e fornecia um retorno avaliativo com base no desempenho do aluno, abrindo espaço para a ideia de que a tecnologia poderia ser usada para personalizar e melhorar a experiência de aprendizado\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! Criado em 1964 na Universidade de Massachusetts, um dos primeiros softwares a utilizar IA,  no qual resolvia problemas matemáticos descritos em palavras e fornecia um retorno avaliativo com base no desempenho do aluno, abrindo espaço para a ideia de que a tecnologia poderia ser usada para personalizar e melhorar a experiência de aprendizado\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade: Você sabia que pouco mais da metade (52%) dos universitários brasileiros usam inteligência artificial (IA) nos estudos, de acordo com uma pesquisa global realizada pela Chegg.org.\n")
            escreva("\n")
            resp = 1    
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. Criada em 2008 por Salman Khan, a Khan Academy é uma organização educacional sem fins lucrativos que oferece exercícios, vídeos e um quadro de aprendizado personalizado para cada aluno estudar em seu próprio ritmo. Apesar de aderir em 2023 o uso da tecnologia, ela não foi uma pioneira no meio digital\n")
            escreva("\n")
            escreva("O correto é a letra B - Criado em 1964 na Universidade de Massachusetts, um dos primeiros softwares a utilizar IA,  no qual resolvia problemas matemáticos descritos em palavras e fornecia um retorno avaliativo com base no desempenho do aluno, abrindo espaço para a ideia de que a tecnologia poderia ser usada para personalizar e melhorar a experiência de aprendizado\n")
            resp = 0              
    }
    retorne resp
  }

  //ENUNCIADO PARA A OITAVA PERGUNTA.
    funcao cadeia EnunciadoPergunta8(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual das formas abaixo não é uma utilização da inteligência artificial na área da saúde\n")
      escreva("\n")
      escreva("A. Auxiliando no tratamento de câncer, com dados clínicos e genéticos do paciente, indicando possíveis tratamentos disponíveis\n")
      escreva("B. A inteligência artificial na saúde permite diagnósticos precoces e identificação de condições clínicas como tumores, prevenindo complicações e indicando tratamentos adequados\n")
      escreva("C. O usuário utiliza um aplicativo onde descreve seus sintomas e a inteligência artificial dá um diagnóstico substituível de um médico junto ao tratamento necessário.\n")
      escreva("L. Loja\n")
      escreva("I. Inventário")
      escreva("\n")
      escreva("Escolha: ")
      leia(alternativa)
    } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
    retorne alternativa  
  }

  // RESPOSTA PARA A OITAVA PERGUNTA.
  funcao inteiro resposta8(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A inteligência artificial pode ser utilizada para auxiliar no tratamento de câncer, com dados clínicos e genéticos do paciente, indicando possíveis tratamentos disponíveis. Um bom exemplo é o algoritmo desenvolvido pela pesquisadora Daniella Castro Araújo, que utiliza de exames de sangue rotineiros, reconhecendo padrões em grupos de pacientes com e sem câncer, assim podendo dar um diagnóstico precoce para prevenir o câncer de mama, o atual foco da ferramenta\n")
            escreva("\n")
            escreva("O correto é a letra C - Existem sim aplicativos que utilizam de Inteligência artificial para dar uma sugestão de diagnóstico, como é o caso da ADA.A ADA foi desenvolvida originalmente para dar apoio na tomada de decisões clínicas, porém com o auxílio de equipes médicas a plataforma também conta com um diagnóstico clínico automatizado, onde o usuário descreve os sintomas e em questões de instantes é dado um retorno. Entretanto, não substitui uma consulta médica com um especialista, e não fornece a mesma precisão no tratamento\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A inteligência artificial pode ser utilizada para diagnósticos precoces e identificação de condições clínicas como tumores, prevenindo complicações e indicando tratamentos adequados. A tecnologia que permite esse tipo de aplicação são as redes neurais, que junto a um banco de dados analisam pequenas alterações ou imagens e geram diagnósticos precoces\n")
            escreva("\n")
            escreva("O correto é a letra C - Existem sim aplicativos que utilizam de Inteligência artificial para dar uma sugestão de diagnóstico, como é o caso da ADA.A ADA foi desenvolvida originalmente para dar apoio na tomada de decisões clínicas, porém com o auxílio de equipes médicas a plataforma também conta com um diagnóstico clínico automatizado, onde o usuário descreve os sintomas e em questões de instantes é dado um retorno. Entretanto, não substitui uma consulta médica com um especialista, e não fornece a mesma precisão no tratamento\n")
            resp = 0   
        }

        senao se (alternativa == "c" ou alternativa == "C") {
             escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! Existem sim aplicativos que utilizam de Inteligência artificial para dar uma sugestão de diagnóstico, como é o caso da ADA.A ADA foi desenvolvida originalmente para dar apoio na tomada de decisões clínicas, porém com o auxílio de equipes médicas a plataforma também conta com um diagnóstico clínico automatizado, onde o usuário descreve os sintomas e em questões de instantes é dado um retorno. Entretanto, não substitui uma consulta médica com um especialista, e não fornece a mesma precisão no tratamento\n")
            escreva("E como prêmio você acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade: Você sabia que o hospital 9 de julho foi o primeiro hospital do mundo a utilizar inteligência artificial para ampliar a segurança de seus pacientes? O sistema foi desenvolvido pela Microsoft e é responsável pelo monitoramento dos pacientes por meio de sensores inteligentes que detectam movimentações fora do padrão em tempo real, assim prevenindo quedas hospitalares\n")
            escreva("\n")
            resp = 1              
    }
    retorne resp
  }

  // A LOJA APRESENTADA AO USUARIO.
  funcao inteiro LojaAnuncio(){
    inteiro alternativa
     faca{              
            escreva("\n")
            escreva("* LOJA *\n")
            escreva(" [1] Vida  |  [2] Dicas  |  [3] Eliminar Alternativa  |  [4] NextQuestion  |  [5] Sair \n ")
            escreva("\n")
            escreva("Escolha o item que deseja comprar:")
            leia (alternativa)
            }enquanto(alternativa != 1 e alternativa != 2 e alternativa !=3 e alternativa !=4 e alternativa !=5)
            retorne alternativa
  } 

  funcao inteiro sair(){
    inteiro confirmar
    escreva("\n")
    escreva("Deseja sair ? \n")
    escreva("\n")
    escreva("[1] Sim  |  [2] Não\n")
    escreva("Escolha:") 
    leia(confirmar)
    retorne confirmar
  }
  
  // A DEPENDER DO ITEM ESCOLHIDO, A CADEIA "NOME" RECEBE VIDA, DICAS, ELIMINAR ALTERNATIVA OU NEXTQUESTION.
  funcao cadeia NomeLoja(inteiro alternativa){
    cadeia nome
    escolha(alternativa){
      caso 1:
        nome = "Vida"
      pare

      caso 2:
        nome = "Dicas"
      pare

      caso 3:
        nome = "Eliminar Alternativa"
       pare

      caso 4: 
        nome = "NextQuestion"
      pare
    }       
  retorne nome
  }

  // CADA ITEM TAMBÉM POSSUI O SEU VALOR, A DEPENDER DO DA ESCOLHA DO USUÁRIO.
  funcao inteiro custo(inteiro alternativa, inteiro vetor[]){
    inteiro preco 
    escolha(alternativa){
      caso 1:
        preco = vetor[6]
      pare
      caso 2:
        preco = vetor[3]
      pare
      caso 3:
        preco = vetor[4]
      pare
      caso 4:
        preco = vetor[5]
      pare
    }

    retorne preco
  }

 
  // FUNÇÃO PARA APRESENTAR O ITEM E VALOR QUE O USUÁRIO DESEJA COMPRAR.
 funcao caracter Chek(cadeia nome, inteiro preco){
    caracter voltar   
   faca{
        escreva("\n")
        escreva("Você escolheu: ",nome)
        escreva("\n")
        escreva(nome," custa ",preco)
        escreva("\n")
        escreva("Deseja comprar ? \n")
        escreva("[1] Sim  |  [2] Não \n")
        escreva("Escolha: ")
        leia (voltar)

        }enquanto(voltar != 1 e voltar != 2 )
    
      retorne voltar
  }
  
  //FUNÇÃO PARA CHECAR SE O USUÁRIO POSSUI MOEDAS O SUFICIENTE PARA COMPRAR O ITEM.
  funcao inteiro checandoCompra(inteiro preco, inteiro GuardandoGame[], inteiro alternativa){
    se(GuardandoGame [1] >= preco  ){
      GuardandoGame[1] = GuardandoGame [1] - preco
      escolha(alternativa){
        caso 1: 
          GuardandoGame[2] = GuardandoGame[2] + 1
        pare

        caso 2: 
          GuardandoGame[3] = GuardandoGame[3] + 1
        pare

        caso 3:
          GuardandoGame[4] = GuardandoGame[4] + 1
        pare

        caso 4:
          GuardandoGame[5] = GuardandoGame[5] + 1
        pare 
      }
  
    }senao{
      escreva("\n")
      escreva("Dinheiro insuficiente")
      escreva("\n")
    }
    retorne GuardandoGame
  }

  //FUNÇÃO QUE FAZ DA LOJA.
  funcao inteiro loja(inteiro GuardandoGame[], inteiro vetor[]){
    inteiro alternativa
    inteiro preco
    caracter voltar
    inteiro voltando
    cadeia nome
    faca{
    alternativa = LojaAnuncio()
    voltando = 1
        se(alternativa != 5){
          nome = NomeLoja(alternativa)
          preco = custo(alternativa, vetor)
          voltar = Chek(nome, preco)
          se(voltar == "1"){
            GuardandoGame = checandoCompra(preco, GuardandoGame, alternativa)
            voltando = 0
          }senao se(voltar == "2"){
            voltando = 0
          }         
          }se (alternativa == 5){
            voltando == 1
          }
    }enquanto(voltando == 0)
    
    retorne GuardandoGame
  }

  // CADA PERGUNTA TRANSMITE O SEU NÚMERO, EX: PRIMEIRA PERGUNTA TRANSMITE O 1.
  //QUANDO O USUÁRIO UTILIZA AS DICAS DE SEU INVENTÁRIO, A DEPENDER DO NÚMERO DA PERGUNTA É TRANSMITIDA A DICA.
   funcao Dicas(inteiro pergunta){
    escolha(pergunta){
      caso 1:
        escreva("\nDica: A inteligência artificial buscar compreender o raciocínio humano\n")
      pare

      caso 2:
        escreva("\nDica: Ele é conhecido como o pai da computação\n")
      pare

      caso 3:
        escreva("\nDica: A conferência possui o nome de uma universidade\n")
      pare

      caso 4:
        escreva("\nDica: O programa era conhecido por resolver teoremas matematicos\n")
      pare

      caso 5:
        escreva("\nDica: *ANÁLISE* as alternativas\n")
      pare

      caso 6:
        escreva("\nDica: Ela chegou no Brasil a 10 anos atrás\n")
      pare

      caso 7:
        escreva("\nDica: Tods nós somos estudantes, lembre-se disso\n")
      pare

      caso 8:
        escreva("\nDica: A conferência possui o nome de uma universidade\n")
      pare
    }
  
   }

  // CADA PERGUNTA TRANSMITE O SEU NÚMERO, EX: PRIMEIRA PERGUNTA TRANSMITE O 1.
  //QUANDO O USUÁRIO UTILIZA AS DICAS DE SEU INVENTÁRIO, A DEPENDER DO NÚMERO DA PERGUNTA É TRANSMITIDA A ALTERNATIVA INCORRETA.
   funcao Eliminar (inteiro pergunta){
    
    escolha(pergunta){
      caso 1:
        escreva("\nAlternativa incorreta:\n C. A área que busca decifrar o código genético humano e replicá-lo nas máquinas por meio de algoritmos e sistemas\n")
      pare

      caso 2:
        escreva("\nAlternativa incorreta:\n B. Em 1956, com a conferência de Dartmouth, onde o termo *inteligência artificial* foi oficialmente criado.\n")
      pare

      caso 3:
        escreva("\nAlternativa incorreta:\n A. WWDC (Apple Worldwide Developers Conference)\n")
      pare

      caso 4:
        escreva("\nAlternativa incorreta:\n A. General Problem Solver\n")
      pare

      caso 5:
        escreva("\nAlternativa incorreta:\n C. Redes Neurais\n")
      pare

      caso 6:
        escreva("\nAlternativa incorreta:\n B. Udemy\n")
      pare

      caso 7:
        escreva("\nAlternativa incorreta:\n A. Google Classroom\n")
      pare

      caso 8:
        escreva("\nAlternativa incorreta:\n B. A inteligência artificial na saúde permite diagnósticos precoces e identificação de condições clínicas como tumores, prevenindo complicações e indicando tratamentos adequado\n")
      pare
    }
  
   }

  // FUNÇÃO DO INVETÁRIO
  funcao inteiro inventario(inteiro GuardandoGame[], inteiro pergunta, inteiro controle){
    inteiro escolhas
    inteiro volta

    faca{// APRESENTADO QUANTAS DICAS, ELIMINAR ALTERNATIVA E NEXTQUESTIONS O USUÁRIO POSSUI.
     escreva("\nVocê selecionou o inventário\n")
           escreva("Você possui:\n")
           escreva("\n")
           escreva("Dicas: ", GuardandoGame[3])
           escreva("\n")
           escreva("Eliminar Alternativa: ", GuardandoGame[4])
           escreva("\n")
           escreva("NextQuestion: ", GuardandoGame[5])
           escreva("\n[1] Dica  |  [2] Eliminar Alternativa  |  [3] NextQuestion  |  [4] Sair\n")
           escreva("Escolha: ")
           leia(escolhas)      

        //A DEPENDER DA ESCOLHA O USUARIO, É VERIFICADO SE ELE POSSUI UMA OU MAIS QUANTIDADES.
        escolha(escolhas){
          caso 1:
            se(GuardandoGame[3] >= 1){
              Dicas(pergunta)
              GuardandoGame[3] = GuardandoGame[3] - 1
              volta = 1            
            }senao{
              escreva("\nVocê não possui Dicas o suficiente\n")
              volta = 0    
             }
             GuardandoGame[6] = 0
            pare

          caso 2:
            se(GuardandoGame[4] >= 1){
              Eliminar(pergunta)
              GuardandoGame[4] = GuardandoGame[4] - 1
              volta = 1
            }senao{
              escreva("\nVocê não possui Eliminar Questões o suficiente\n")
              volta = 0
            }
            GuardandoGame[6] = 0
           pare

          caso 3:    
          se(GuardandoGame[5] >= 1){
            GuardandoGame[5] = GuardandoGame[5] - 1
            GuardandoGame[6] = 1
            volta = 1
          }senao{
            escreva("\nVocê não possui NextQuestion o suficiente\n")
            volta = 0
          }
           pare
           caso 4:
            volta = 1
            GuardandoGame[6] = 0
            pare
        }
        
    }enquanto(volta != 1)     
    retorne GuardandoGame
  }

  //CASO RETORNE A FUNÇÃO "RESPOSTA DA PERGUNTA" RETORNE 1, O USUÁRIO ACERTOU, GANHANDO MOEDAS E PONTOS
  //CASO RETORNE 0, ELE ERROU E PERDE UMA VIDA
  funcao inteiro CertoOuErrado(inteiro resp, inteiro vetor[], inteiro GuardandoGame[]){
    escolha(resp){
    caso 1:
      GuardandoGame[0] = GuardandoGame[0] + vetor[0]
      GuardandoGame[1] = GuardandoGame[1] + vetor[1]
    pare

    caso 0:
      GuardandoGame [2] = GuardandoGame [2] - 1
    }

    retorne GuardandoGame
  }

// FUNÇÃO PARA A PERGUNTA 1
  funcao inteiro pergunta1(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 1 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA.
    inteiro controle // CASO O USUÁRIO ESCOLHA O INVETÁRIO OU A LOJA, O LAÇO DE REPETIÇÃO VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUNÇÃO CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, NÚMERO ESSES PASSADOS POR PARÂMETROS PARA A FUNÇÃO "CERTOouERRADO".
    cadeia alternativa  
    escreva("\n")
    escreva("\n")
    escreva("Seja muito bem-vindo. Estamos muito felizes em ter você por aqui! Para embarcarmos em uma jornada de aprendizado e curiosidades, vamos primeiro ver qual o seu entendimento quando falamos sobre IA.")

    mostra(GuardandoGame)
    faca {
        controle = 0
      alternativa = EnunciadoPergunta1()   
      se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C"){
        resp = resposta1(alternativa) 
        controle = 1
      }senao se(alternativa == "l" ou alternativa == "L"){
        GuardandoGame = loja(GuardandoGame, vetor) 
        controle = 0 
      }senao se(alternativa == "I" ou alternativa == "i"){
        GuardandoGame = inventario(GuardandoGame, pergunta, controle)
        controle = GuardandoGame[6]
      }

    }enquanto(controle != 1) 
    GuardandoGame = CertoOuErrado(resp, vetor, GuardandoGame)
    
  retorne GuardandoGame
  }

  // FUNÇÃO PARA A PERGUNTA 2
  funcao inteiro pergunta2(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 2 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA.
    inteiro controle // CASO O USUÁRIO ESCOLHA O INVETÁRIO OU A LOJA, O LAÇO DE REPETIÇÃO VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUNÇÃO CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, NÚMERO ESSES PASSADOS POR PARÂMETROS PARA A FUNÇÃO "CERTOouERRADO".
    cadeia alternativa  
    escreva("\n")
    escreva("\n")
    escreva("Agora que já sabemos o que é inteligência artificial e o que essa área busca, vamos ver quando surgiu um dos primeiros vestígios desse conceito")

    mostra(GuardandoGame)
    faca {
        controle = 0
      alternativa = EnunciadoPergunta2()   
      se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C"){
        resp = resposta2(alternativa) 
        controle = 1
      }senao se(alternativa == "l" ou alternativa == "L"){
        GuardandoGame = loja(GuardandoGame, vetor ) 
        controle = 0 
      }senao se(alternativa == "I" ou alternativa == "i"){
        GuardandoGame = inventario(GuardandoGame, pergunta, controle)
        controle = GuardandoGame[6]
      }

    }enquanto(controle != 1) 
    GuardandoGame = CertoOuErrado(resp, vetor, GuardandoGame)  
  retorne GuardandoGame
  }

  // FUNÇÃO PARA A PERGUNTA 3
  funcao inteiro pergunta3(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 3 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USUÁRIO ESCOLHA O INVETÁRIO OU A LOJA, O LAÇO DE REPETIÇÃO VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUNÇÃO CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, NÚMERO ESSES PASSADOS POR PARÂMETROS PARA A FUNÇÃO "CERTOouERRADO".
    cadeia alternativa  

    escreva("\n")
    escreva("\n")
    escreva("Tendo em mente como surgiu a ideia da inteligência artificial, devemos falar do primeiro evento relacionado a IA, que com certeza foi um marco para o seu desenvolvimento, a famosa conferência:")
    mostra(GuardandoGame)
    faca {
        controle = 0
      alternativa = EnunciadoPergunta3()   
      se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C"){
        resp = resposta3(alternativa) 
        controle = 1
      }senao se(alternativa == "l" ou alternativa == "L"){
        GuardandoGame = loja(GuardandoGame, vetor ) 
        controle = 0 
      }senao se(alternativa == "I" ou alternativa == "i"){
        GuardandoGame = inventario(GuardandoGame, pergunta, controle)
        controle = GuardandoGame[6]
      }

    }enquanto(controle != 1) 
    GuardandoGame = CertoOuErrado(resp, vetor, GuardandoGame)  
  retorne GuardandoGame
  }

  // FUNÇÃO PARA A PERGUNTA 4
  funcao inteiro pergunta4(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 4 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USUÁRIO ESCOLHA O INVETÁRIO OU A LOJA, O LAÇO DE REPETIÇÃO VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUNÇÃO CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, NÚMERO ESSES PASSADOS POR PARÂMETROS PARA A FUNÇÃO "CERTOouERRADO".
    cadeia alternativa  
    
    escreva("\n")
    escreva("\n")
    escreva("A conferência de Dartmouth certamente foi de extrema importância para o desenvolvimento da IA, tanto que, pela primeira vez foi apresentado um software que utilizou-se da tecnologia")
    mostra(GuardandoGame)
    faca {
        controle = 0
      alternativa = EnunciadoPergunta4()   
      se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C"){
        resp = resposta4(alternativa) 
        controle = 1
      }senao se(alternativa == "l" ou alternativa == "L"){
        GuardandoGame = loja(GuardandoGame, vetor ) 
        controle = 0 
      }senao se(alternativa == "I" ou alternativa == "i"){
        GuardandoGame = inventario(GuardandoGame, pergunta, controle)
        controle = GuardandoGame[6]
      }

    }enquanto(controle != 1) 
    GuardandoGame = CertoOuErrado(resp, vetor, GuardandoGame)  
  retorne GuardandoGame
  }

  // FUNÇÃO PARA A PERGUNTA 5
  funcao inteiro pergunta5(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 5 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USUÁRIO ESCOLHA O INVETÁRIO OU A LOJA, O LAÇO DE REPETIÇÃO VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUNÇÃO CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, NÚMERO ESSES PASSADOS POR PARÂMETROS PARA A FUNÇÃO "CERTOouERRADO".
    cadeia alternativa  

    escreva("\n")
    escreva("\n")
    escreva("Ao passar dos anos foram realizadas pesquisas, e a especialização na IA foi se aprofundando cada vez mais, hoje já contamos com campos específicos para cada área de estudo")
    mostra(GuardandoGame)
    faca {
        controle = 0
      alternativa = EnunciadoPergunta5()   
      se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C"){
        resp = resposta5(alternativa) 
        controle = 1
      }senao se(alternativa == "l" ou alternativa == "L"){
        GuardandoGame = loja(GuardandoGame, vetor) 
        controle = 0 
      }senao se(alternativa == "I" ou alternativa == "i"){
        GuardandoGame = inventario(GuardandoGame, pergunta, controle)
        controle = GuardandoGame[6]
      }

    }enquanto(controle != 1) 
    GuardandoGame = CertoOuErrado(resp, vetor, GuardandoGame)  
  retorne GuardandoGame
  }

  // FUNÇÃO PARA A PERGUNTA 6
    funcao inteiro pergunta6(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 6 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USUÁRIO ESCOLHA O INVETÁRIO OU A LOJA, O LAÇO DE REPETIÇÃO VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUNÇÃO CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, NÚMERO ESSES PASSADOS POR PARÂMETROS PARA A FUNÇÃO "CERTOouERRADO".
    cadeia alternativa  

    escreva("\n")
    escreva("\n")
    escreva("Como apresentado, vimos que a inteligência artificial está mais inserida no nosso cotidiano do que pensamos. Seguindo essa linha de raciocínio, é capaz da inteligência artificial estar presente na educação? A resposta é sim, é possível!")
    mostra(GuardandoGame)
    faca {
        controle = 0
      alternativa = EnunciadoPergunta6()   
      se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C"){
        resp = resposta6(alternativa) 
        controle = 1
      }senao se(alternativa == "l" ou alternativa == "L"){
        GuardandoGame = loja(GuardandoGame, vetor ) 
        controle = 0 
      }senao se(alternativa == "I" ou alternativa == "i"){
        GuardandoGame = inventario(GuardandoGame, pergunta, controle)
        controle = GuardandoGame[6]
      }

    }enquanto(controle != 1) 
    GuardandoGame = CertoOuErrado(resp, vetor, GuardandoGame)  
  retorne GuardandoGame
  }

  // FUNÇÃO PARA A PERGUNTA 7
    funcao inteiro pergunta7(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 7 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USUÁRIO ESCOLHA O INVETÁRIO OU A LOJA, O LAÇO DE REPETIÇÃO VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUNÇÃO CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, NÚMERO ESSES PASSADOS POR PARÂMETROS PARA A FUNÇÃO "CERTOouERRADO".
    cadeia alternativa  
    cadeia nome
    escreva("\n")
    escreva("\n")
    escreva("Como apresentado, vimos que a inteligência artificial está mais inserida no nosso cotidiano do que pensamos. Seguindo essa linha de raciocínio, é capaz da inteligência artificial estar presente na educação? A resposta é sim, é possível!")
    mostra(GuardandoGame)
    faca {
        controle = 0
      alternativa = EnunciadoPergunta7()   
      se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C"){
        resp = resposta7(alternativa) 
        controle = 1
      }senao se(alternativa == "l" ou alternativa == "L"){
        GuardandoGame = loja(GuardandoGame, vetor ) 
        controle = 0 
      }senao se(alternativa == "I" ou alternativa == "i"){
        GuardandoGame = inventario(GuardandoGame, pergunta, controle)
        controle = GuardandoGame[6]
      }

    }enquanto(controle != 1) 
    GuardandoGame = CertoOuErrado(resp, vetor, GuardandoGame)  
  retorne GuardandoGame
  }

  // FUNÇÃO PARA A PERGUNTA 8
    funcao inteiro pergunta8(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 8 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USUÁRIO ESCOLHA O INVETÁRIO OU A LOJA, O LAÇO DE REPETIÇÃO VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUNÇÃO CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, NÚMERO ESSES PASSADOS POR PARÂMETROS PARA A FUNÇÃO "CERTOouERRADO"
    cadeia alternativa  
    escreva("\n")
    escreva("\n")
    escreva("Como apresentado, vimos que a inteligência artificial está mais inserida no nosso cotidiano do que pensamos. Seguindo essa linha de raciocínio, é capaz da inteligência artificial estar presente na educação? A resposta é sim, é possível!")
    mostra(GuardandoGame)
    faca {
        controle = 0
      alternativa = EnunciadoPergunta8()   
      se (alternativa == "a" ou alternativa == "A" ou alternativa == "b" ou alternativa == "B" ou alternativa == "c" ou alternativa == "C"){
        resp = resposta8(alternativa) 
        controle = 1
      }senao se(alternativa == "l" ou alternativa == "L"){
        GuardandoGame = loja(GuardandoGame, vetor) 
        controle = 0 
      }senao se(alternativa == "I" ou alternativa == "i"){
        GuardandoGame = inventario(GuardandoGame, pergunta, controle)
        controle = GuardandoGame[6]
      }

    }enquanto(controle != 1) 
    GuardandoGame = CertoOuErrado(resp, vetor, GuardandoGame)  
  retorne GuardandoGame
  } 

  //FUÇÃO FIM, IMPRIMENDO QUANTOS PONTOS O USUÁRIO CONQUISTOU.
  funcao fim(inteiro GuardandoGame[]){
    escreva("\n** QUIZ FINALIZADO **\n")
    escreva("PONTOS:",GuardandoGame[0])
  }

  funcao inicio() {
    inteiro vetor[7] // Vetor para guardar os parametros de cada modo de jogo
    inteiro GuardandoGame[6] // Armazena os pontos, moedas, vidas e quantidades de Ups que o usuario tem no inventario

      comeco()
      vetor = EscolhendoModo(vetor)
      GuardandoGame = EstoqueGame(vetor)
      GuardandoGame = pergunta1(GuardandoGame, vetor)
      se(GuardandoGame[2] >= 1){
        GuardandoGame = pergunta2(GuardandoGame, vetor)
            se(GuardandoGame[2] >= 1){
              GuardandoGame = pergunta3(GuardandoGame, vetor)
                se(GuardandoGame[2] >= 1){
                  GuardandoGame = pergunta4(GuardandoGame, vetor)
                    se(GuardandoGame[2] >= 1){
                      GuardandoGame = pergunta5(GuardandoGame, vetor)
                        se(GuardandoGame[2] >= 1){
                          GuardandoGame = pergunta6(GuardandoGame, vetor)
                            se(GuardandoGame[2] >= 1){
                              GuardandoGame = pergunta7(GuardandoGame)
                                se(GuardandoGame[2] >= 1){
                                    GuardandoGame = pergunta8(GuardandoGame)
                                    fim(GuardandoGame)
                                }senao{
                                  fim(GuardandoGame)
                                }
                            }senao{
                              fim(GuardandoGame)
                            }
                        }senao{
                          fim(GuardandoGame)
                        }        
                    }senao{
                      fim(GuardandoGame)
                    }
                }senao{
                  fim(GuardandoGame)
                }
            }senao{
              fim(GuardandoGame)
            }
      }senao{
        fim(GuardandoGame)
      }

  }
                                           
}
