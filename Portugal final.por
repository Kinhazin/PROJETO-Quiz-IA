programa {

  // APRESENTA��O DO QUIZ
  funcao comeco(){
        cadeia nome // Nome do usu�rio
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
  }

  // ESCOLHENDO O MODO DE JOGO
  funcao inteiro mododejogo() {
    inteiro Dificuldade
    faca {
        escreva("\n")
        escreva("Agora chegou o momento de decidir a dificuldade do Quiz\n")
        escreva("\n")
        escreva("Escolha o n�vel de dificuldade: \n")
        escreva("Digite: [1] F�cil | [2] M�dio | [3] Dif�cil\n")
        escreva("Escolha: ")
        leia(Dificuldade)
        se (Dificuldade != 1 e Dificuldade != 2 e Dificuldade != 3) {
            escreva("Op��o inv�lida! Por favor, escolha novamente.\n")
        }
    } enquanto (Dificuldade != 1 e Dificuldade != 2 e Dificuldade != 3)
    retorne Dificuldade
}

  // NOME DE CADA DIFICULDADE
    funcao cadeia NomeDaDificuldade(inteiro Dificuldade){
      cadeia dificuldade_Nome
      escolha(Dificuldade){
        caso 1:
          dificuldade_Nome = "F�cil"
          pare
        
        caso 2:
          dificuldade_Nome = "M�dio"
          pare
        
        caso 3:
            dificuldade_Nome = "Dif�cil"
            pare
      }
      retorne dificuldade_Nome
    }

  // CADA MODO DE JOGO E SEUS PARAMETROS.
  funcao inteiro parametros(inteiro Dificuldade){
    inteiro vetor[7]
    escolha (Dificuldade) {
                caso 1:

                    vetor[0] = 10 // GANHO DE PONTOS - MODO F�CIL.
                    vetor[1] = 20 // GANHO DE MOEDA - MODO F�CIL.
                    vetor[2] = 5 // VIDAS DISPON�VEIS - MODO F�CIL.
                    vetor[3] = 15 // VALOR DA DICA - MODO F�CIL.
                    vetor[4] = 25 // VALOR DE ELIMINAR QUEST�O - MODO F�CIL.
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO F�CIL.
                    vetor[6] = 45 // VALOR DA VIDA - MODO F�CIL.
                pare
                caso 2:
              
                    vetor[0] = 25 // GANHO DE PONTOS - MODO M�DIO.
                    vetor[1] = 15 // GANHO DE MOEDA - MODO M�DIO.
                    vetor[2] = 3 // VIDAS DISPON�VEIS - MODO M�DIO.
                    vetor[3] = 15 // VALOR DA DICA - MODO M�DIO.
                    vetor[4] = 25 // VALOR DE ELIMINAR QUEST�O - MODO M�DIO.
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO M�DIO.
                    vetor[6] = 45 // VALOR DA VIDA - MODO M�DIO.
                pare
                caso 3:
                 
                    vetor[0] = 50 // GANHO DE PONTOS - MODO DIF�CIL.
                    vetor[1] = 10 // GANHO DE MOEDA - MODO DIF�CIL.
                    vetor[2] = 1 // VIDAS DISPON�VEIS - MODO DIF�CIL.
                    vetor[3] = 15 // VALOR DA DICA - MODO DIF�CIL.
                    vetor[4] = 25 // VALOR DE ELIMINAR QUEST�O - MODO DIF�CIL.
                    vetor[5] = 35 // VALOR DO NEXT QUESTION - MODO DIF�CIL.
                    vetor[6] = 45 // VALOR DA VIDA - MODO DIF�CIL.
                pare
            }
            retorne vetor
  }
  // APRESENTANDO CADA PARAMETRO PARA O USUARIO.
  funcao inteiro confirmar(inteiro vetor[], inteiro continuar, cadeia dificuldade_Nome){
              
              
              // APRESENTADO AO USU�RIO OS PAR�METROS.
              escreva("\n")
              escreva("Voc� selecionou o n�vel: " + dificuldade_Nome )
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
                escreva("[1] Sim  | [2] N�o\n")
                escreva("Escolha: ")
                leia(continuar)
                se (continuar != 1 e continuar != 2) {
                    escreva("Op��o inv�lida\n")  
                } 
            } enquanto (continuar != 1 e continuar != 2)
            retorne continuar
          }
  // FUN��O RESPONS�VEL POR ESCOLHER O MODO DE JOGO, CASO O USU�RIO ESCOLHA (2)N�O, O USU�RIO VOLTA PARA TELA PARA  ESCOLHER ENTRE AS 3 DIFICULDADES.
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
    retorne alternativa  
  }

  // RESPOSTA PARA A PRIMEIRA PERGUNTA.
  funcao inteiro resposta1(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A Intelig�ncia Artificial realmente busca algo na mente humana, por�m n�o � desvendar e sim simula-l� nas m�quinas. A mente humana por si s� � muito complexa, �nica e abrangente, algo bastante improv�vel de se recriar, apenas 'simular'.\n")
            escreva("\n")
            escreva("O correto � a letra B - A intelig�ncia artificial busca reproduzir nas m�quinas por meio de algoritmos e sistemas, algumas fun��es cognitivas humanas, como por exemplo: A capacidade de racioc�nio, tomada de decis�o e aprendizado cont�nuo.\n")
            resp = 0
        }
        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto. A intelig�ncia artificial busca reproduzir nas m�quinas por meio de algoritmos e sistemas, algumas fun��es cognitivas humanas, como por exemplo: A capacidade de racioc�nio, tomada de decis�o e aprendizado cont�nuo.\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nVoc� sabia que o primeiro computador digital eletr�nico pesava cerca de incr�veis 30 toneladas, contendo impressionantes 180 metros quadrados. O famoso ENIAC!\n")
            escreva("\n")
            resp = 1
        }
        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")          
            escreva("Incorreto. O projeto 'Genoma Humano' foi lan�ado em 1989 e teve seu fim em 2003, com o foco em decifrar o c�digo humano, conseguindo desvendar incr�veis 92% de nosso c�digo gen�tico, entretanto este n�o � o foco em geral da IA.\n")
            escreva("\n")
            escreva("O correto � a letra B - A intelig�ncia artificial busca reproduzir nas m�quinas por meio de algoritmos e sistemas, algumas fun��es cognitivas humanas, como por exemplo: A capacidade de racioc�nio, tomada de decis�o e aprendizado cont�nuo.\n")
            resp = 0                
    }
    retorne resp
  }

// ENUNCIADO DA SEGUNDA PERGUNTA.
  funcao cadeia EnunciadoPergunta2(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQuando nasceu a ideia de intelig�ncia artificial\n")
      escreva("\n")
      escreva("A. Em meados de 1950, com a pesquisa pioneira de Alan Turing, a famosa *Computing Machinery and Intelligence*\n")
      escreva("B. Em 1956, com a confer�ncia de Dartmouth, onde o termo *intelig�ncia artificial* foi oficialmente criado\n")
      escreva("C. Com a ideia do *Super computador de Botvinnik*, em 1960\n")
      escreva("L. Loja\n")
      escreva("I. Invent�rio")
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
            escreva("Correto. Um dos pioneiros na intelig�ncia artificial antes mesmo de seu termo ter sido inventado. Alan Turing, com a cria��o de um artigo que explorava a possibilidade de uma m�quina conseguir ser instru�da a pensar, aprender e utilizar de sua pr�pria intelig�ncia para resolver problemas, igual a um humano.\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nVoc� sabia que Alan Turing � conhecido como o pai da computa��o ? Ele foi o inventor do famoso Teste de Turing, um experimento que avalia a capacidade de uma m�quina de exibir comportamento inteligente que seja equivalente ao de um ser humano, ou seja, para saber se um computador pode se passar por um ser humano!\n")
            escreva("\n")
            resp = 1
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. Organizada por John McCarthy, Marvin Minsky, Nathaniel Rochester e Claude Shannon, a confer�ncia de Dartmouth tinha como objetivo explorar a hip�tese de que uma m�quina pode ser programada para aprender a pensar como um humano. Apesar de tudo isso, este n�o foi o primeiro registro da ideia de Intelig�ncia artificial, por�m foi da cria��o do termo.\n")           
            escreva("\n")
            escreva("O correto � a letra A - Alan Turing, um dos pioneiros na intelig�ncia artificial antes mesmo de seu termo ter sido inventado, com a cria��o de um artigo que explorava a possibilidade de uma m�quina conseguir ser instru�da a pensar, aprender e utilizar de sua pr�pria intelig�ncia para resolver problemas, igual a um humano\n")
            resp = 0
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")          
            escreva("Incorreto. O Campe�o mundial de xadrez Botvinnik tinha um projeto, o supercomputador Botvinnik! Seu objetivo era criar um programa de xadrez com a capacidade de reproduzir os processos do c�rebro humano, por�m essa ideia surgiu em 1960, assim n�o sendo a primeira.\n")
            escreva("\n")
            escreva("O correto � a letra A - Alan Turing, um dos pioneiros na intelig�ncia artificial antes mesmo de seu termo ter sido inventado, com a cria��o de um artigo que explorava a possibilidade de uma m�quina conseguir ser instru�da a pensar, aprender e utilizar de sua pr�pria intelig�ncia para resolver problemas, igual a um humano\n")
            resp = 0                
    }
    retorne resp
  }

// ENUNCIADO PARA A TERCEIRA PERGUNTA.
    funcao cadeia EnunciadoPergunta3(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual foi a primeira confer�ncia voltada para Intelig�ncia Artificial\n")
      escreva("\n")
      escreva("A. A WWDC (Apple Worldwide Developers Conference)\n")
      escreva("B. A International Conference on Machine Learning\n")
      escreva("C. A confer�ncia de Dartmouth\n")
      escreva("L. Loja\n")
      escreva("I. Invent�rio")
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
            escreva("Incorreto! A WWDC (Apple Worldwide Developers Conference) � Organizada pela Apple, sendo um evento anual voltado para desenvolvedores de software, onde a empresa revela as �ltimas atualiza��es em seus sistemas operacionais e apresenta novas ferramentas e tecnologias para desenvolvedores\n")
            escreva("\n")
            escreva("O correto � a letra C - A famosa confer�ncia de Dartmouth, realizada em 1956 com o intuito de explorar a hip�tese de que ''toda caracter�stica do aprendizado ou qualquer outra caracter�stica da intelig�ncia pode, em princ�pio, ser t�o precisamente descrita, que uma m�quina pode ser feita para simul�-la'', ou seja, uma m�quina pode ser programada a aprender a pensar como um humano. Vale lembrar que foi nessa confer�ncia onde o termo �Intelig�ncia Artificial� foi criado.\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto! A International Conference on Machine Learning � uma das principais confer�ncias acad�micas voltadas para machine learning. Sendo realizada anualmente reunindo pesquisadores, acad�micos e profissionais de todo o mundo para apresentar e discutir os avan�os mais recentes da tecnologia, contudo por mais que seja uma confer�ncia voltada especialmente para a �rea, entretanto ela n�o foi a primeira.\n")           
            escreva("\n")
            escreva("O correto � a letra C - A famosa confer�ncia de Dartmouth, realizada em 1956 com o intuito de explorar a hip�tese de que ''toda caracter�stica do aprendizado ou qualquer outra caracter�stica da intelig�ncia pode, em princ�pio, ser t�o precisamente descrita, que uma m�quina pode ser feita para simul�-la'', ou seja, uma m�quina pode ser programada a aprender a pensar como um humano. Vale lembrar que foi nessa confer�ncia onde o termo �Intelig�ncia Artificial� foi criado.\n")
            resp = 0
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! A famosa confer�ncia de Dartmouth, realizada em 1956 com o intuito de explorar a hip�tese de que ''toda caracter�stica do aprendizado ou qualquer outra caracter�stica da intelig�ncia pode, em princ�pio, ser t�o precisamente descrita que uma m�quina pode ser feita para simul�-la'', ou seja, uma m�quina pode ser programada a aprender e pensar como um humano. Vale lembrar que foi nessa confer�ncia on de o termo �Intelig�ncia Artificial� foi criado.\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nJ� que estamos falando de pioneiros no campo da IA, voc� sabia que a Universidade Federal da Para�ba foi a primeira institui��o p�blica do pa�s a oferecer uma gradua��o em Ci�ncia de Dados e Intelig�ncia Artificial? O curso � ofertado desde 2020 e tem o Enem como forma de ingressar.\n")
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
      escreva("\nQual foi o primeiro programa a usar Intelig�ncia Artificial\n")
      escreva("\n")
      escreva("A. General Problem Solver\n")
      escreva("B. Logic Theorist\n")
      escreva("C. Eliza\n")
      escreva("L. Loja\n")
      escreva("I. Invent�rio")
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
            escreva("Incorreto! Criado em 1958 com o intuito de resolver problemas de forma semelhante a um humano, atrav�s das seguintes etapas: Receber o problema, a��es, pr�-condi��es e objetivo a ser alcan�ado; Tentar alcan�ar o objetivo final se baseando na pr�-condi��o de cada a��o; Ao final ele apresenta a sequ�ncia ideal para alcan�ar o objetivo final. O programa deu o pontap� inicial para o estudo do pensamento computacional, entretanto n�o foi o primeiro programa a se utilizar da IA.\n")
            escreva("\n")
            escreva("O correto � a letra B - Logic Theorist, lan�ada em 1956 e apresentada ao mundo por Allen Newell e Cliff Shaw, tinha o objetivo provar teoremas matem�ticos com base em um conjunto de regras e blocos de l�gica. Assim, pela primeira vez uma m�quina estava sendo usada para resolver tarefas intelectuais\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
           escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto. Logic Theorist, lan�ada em 1956 e apresentada ao mundo por Allen Newell e Cliff Shaw, tinha o objetivo provar teoremas matem�ticos com base em um conjunto de regras e blocos de l�gica. Assim, pela primeira vez uma m�quina estava sendo usada para resolver tarefas intelectuais\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nVoc� sabia que a intelig�ncia artificial j� ganhou de um campe�o mundial de xadrez? No dia 10 de fevereiro de 1996, o enxadrista Garry Kasparov, tido por alguns como o maior de todos os tempos, perdia uma partida de xadrez para o supercomputador da IBM Deep Blue.\n")
            escreva("\n")
            resp = 1   
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. Criada em 1966 pelo matem�tico Joseph Weizenbaum, Eliza � o primeiro software de processamento de linguagem natural. Seu objetivo era funcionar como uma esp�cie de psic�loga virtual. Na pr�tica, Weizenbaum criou um software capaz de identificar 250 tipos de frases e enganar o interlocutor usando trechos das perguntas em suas respostas\n")
            escreva("\n")
            escreva("O correto � a letra B - Logic Theorist, lan�ada em 1956 e apresentada ao mundo por Allen Newell e Cliff Shaw, tinha o objetivo provar teoremas matem�ticos com base em um conjunto de regras e blocos de l�gica. Assim, pela primeira vez uma m�quina estava sendo usada para resolver tarefas intelectuais.\n")
            resp = 0              
    }
    retorne resp
  }

  // ENUNCIADO DA QUINTA PERGUNTA.
    funcao cadeia EnunciadoPergunta5(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual das seguintes �reas n�o � um campo de estudo da IA\n")
      escreva("\n")
      escreva("A. Processamento de Linguagem Natural\n")
      escreva("B. An�lise de dados\n")
      escreva("C. Redes Neurais\n")
      escreva("L. Loja\n")
      escreva("I. Invent�rio")
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
            escreva("Incorreto. O processamento de linguagem natural � uma das �reas de estudo da IA, essa �rea trata da habilidade de interpretar e processar a linguagem humana natural por sistemas computacionais. Um �timo exemplo de sua aplica ��o � o Google tradutor, sendo capaz de captar a fala do usu�rio e traduzir para a linguagem de sua escolha\n")
            escreva("\n")
            escreva("O correto � a letra B - Apesar da IA ser utilizada na an�lise de dados, a Administra��o de bancos de dados n�o � uma �rea de estudo da intelig�ncia artificial, pois concentra-se principalmente no gerenciamento e na manuten��o eficiente dos sistemas de banco de dados\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
           escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto. Apesar da IA ser utilizada na an�lise de dados, a Administra��o de bancos de dados n�o � uma �rea de estudo da intelig�ncia artificial, pois concentra-se principalmente no gerenciamento e na manuten��o eficiente dos sistemas de banco de dados\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade:\nVoc� sabia que o banco do Ita� utiliza Intelig�ncia Artificial para aux�lio na an�lise de dados dos documentos jur�dicos?A IA � treinada para identificar informa��es relevantes, como cl�usulas, datas e partes envolvidas\n")
            escreva("\n")
            resp = 1   
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto! Redes Neurais � uma das �reas de estudo da IA, essa �rea conta com algoritmos especializados em reconhecimento de padr�es, classificando dados de acordo com suas similaridades, seja por meio de imagens, v�deos, textos ou sons. Em sua ess�ncia, � um m�todo� que ensina a m�quina a processar dados de uma forma inspirada pelo c�rebro humano. Alguns exemplos de suas aplica��es: Diagn�stico m�dico feito pela classifica��o de imagens; Previs�es financeiras feitas pelo processamento de dados hist�ricos de instrumentos financeiros\n")
            escreva("\n")
            escreva("O correto � a letra B - Apesar da IA ser utilizada na an�lise de dados, a Administra��o de bancos de dados n�o � uma �rea de estudo da intelig�ncia artificial, pois concentra-se principalmente no gerenciamento e na manuten��o eficiente dos sistemas de banco de dados\n")
            resp = 0              
    }
    retorne resp
  }

  // ENUNCIADO PARA DA SEXTA PERGUNTA.
  funcao cadeia EnunciadoPergunta6(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQuais das plataformas abaixo usam intelig�ncia artificial para contribuir na educa��o do usu�rio\n")
      escreva("\n")
      escreva("A. Knewton\n")
      escreva("B. Udemy\n")
      escreva("C. Pluralsight\n")
      escreva("L. Loja\n")
      escreva("I. Invent�rio")
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
            escreva("Correto. A Knewton � uma plataforma de ensino adaptativo que usa IA para adaptar o conte�do educacional �s necessidades e ritmo de cada aluno, concedendo uma experi�ncia de aprendizagem mais proveitosa\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade: Voc� sabia que a plataforma de idiomas Duolingo utiliza intelig�ncia artificial para contribuir na gera��o de frases ? ''Large Language Mode'' � o nome da tecnologia que permite prever o jeito mais prov�vel de completar uma frase (a mesma tecnologia da caixa de sugest�o de palavras quando estamos escrevendo no celular). Utilizando dessa tecnologia, a plataforma consegue gerar uma quantidade massiva de conte�do, sem perder a qualidade\n")
            escreva("\n")
            resp = 1 
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A Udemy � uma plataforma de aprendizado online que oferece uma vasta variedade de cursos em diferentes �reas do conhecimento. Por mais que a plataforma apresente alguns cursos voltados para intelig�ncia artificial, a plataforma em si n�o apresenta uso da IA voltado para a educa��o de seus alunos\n")
            escreva("\n")
            escreva("O correto � a letra A - Correto! A Knewton � uma plataforma de ensino adaptativo que usa IA para adaptar o conte�do educacional �s necessidades e ritmo de cada aluno, concedendo uma experi�ncia de aprendizagem mais proveitosa\n")
            resp = 0    
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto! A Pluralsight � uma plataforma de aprendizado online que oferece uma variedade de cursos relacionados � tecnologia da informa��o.Por mais que a plataforma apresenta bastante cursos voltados para intelig�ncia artificial, a plataforma em si n�o apresenta uso da IA voltado para a educa��o de seus alunos\n")
            escreva("\n")
            escreva("O correto � a letra A - Correto! A Knewton � uma plataforma de ensino adaptativo que usa IA para adaptar o conte�do educacional �s necessidades e ritmo de cada aluno, concedendo uma experi�ncia de aprendizagem mais proveitosa\n")
            resp = 0              
    }
    retorne resp
  }

  //ENUNCIADO PARA A S�TIMA PERGUNTA.
  funcao cadeia EnunciadoPergunta7(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual � o nome do Software descrito acima\n")
      escreva("\n")
      escreva("A. Google Classroom\n")
      escreva("B. Student\n")
      escreva("C. Khan academy\n")
      escreva("L. Loja\n")
      escreva("I. Invent�rio")
      escreva("\n")
      escreva("Escolha: ")
      leia(alternativa)
    } enquanto (alternativa != "a" e alternativa != "A" e alternativa != "b" e alternativa != "B" e alternativa != "c" e alternativa != "C" e alternativa != "I" e alternativa != "i" e alternativa != "L" e alternativa != "l")
    retorne alternativa  
  }

  // RESPOSTA PARA A S�TIMA PERGUNTA.
  funcao inteiro resposta7(cadeia alternativa){
    inteiro resp 
     
        se (alternativa == "a" ou alternativa == "A") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. Lan�ado em 2014, a plataforma educacional permite que professores e estudantes compartilhem tarefas, materiais did�ticos, fa�am trabalhos, etc, algo similar a uma sala de aula, como o pr�prio nome diz. A plataforma utiliza-se sim de intelig�ncia artificial para a cria��o de aulas, avalia��es, dicas e an�lise de desempenho, por�m n�o � o software descrito acima\n")
            escreva("\n")
            escreva("O correto � a letra B - Criado em 1964 na Universidade de Massachusetts, um dos primeiros softwares a utilizar IA, no qual resolvia problemas matem�ticos descritos em palavras e fornecia um retorno avaliativo com base no desempenho do aluno, abrindo espa�o para a ideia de que a tecnologia poderia ser usada para personalizar e melhorar a experi�ncia de aprendizado\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! Criado em 1964 na Universidade de Massachusetts, um dos primeiros softwares a utilizar IA,� no qual resolvia problemas matem�ticos descritos em palavras e fornecia um retorno avaliativo com base no desempenho do aluno, abrindo espa�o para a ideia de que a tecnologia poderia ser usada para personalizar e melhorar a experi�ncia de aprendizado\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade: Voc� sabia que pouco mais da metade (52%) dos universit�rios brasileiros usam intelig�ncia artificial (IA) nos estudos, de acordo com uma pesquisa global realizada pela Chegg.org.\n")
            escreva("\n")
            resp = 1    
        }

        senao se (alternativa == "c" ou alternativa == "C") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. Criada em 2008 por Salman Khan, a Khan Academy � uma organiza��o educacional sem fins lucrativos que oferece exerc�cios, v�deos e um quadro de aprendizado personalizado para cada aluno estudar em seu pr�prio ritmo. Apesar de aderir em 2023 o uso da tecnologia, ela n�o foi uma pioneira no meio digital\n")
            escreva("\n")
            escreva("O correto � a letra B - Criado em 1964 na Universidade de Massachusetts, um dos primeiros softwares a utilizar IA,� no qual resolvia problemas matem�ticos descritos em palavras e fornecia um retorno avaliativo com base no desempenho do aluno, abrindo espa�o para a ideia de que a tecnologia poderia ser usada para personalizar e melhorar a experi�ncia de aprendizado\n")
            resp = 0              
    }
    retorne resp
  }

  //ENUNCIADO PARA A OITAVA PERGUNTA.
    funcao cadeia EnunciadoPergunta8(){
    cadeia alternativa
    faca{
      escreva("\n")
      escreva("\nQual das formas abaixo n�o � uma utiliza��o da intelig�ncia artificial na �rea da sa�de\n")
      escreva("\n")
      escreva("A. Auxiliando no tratamento de c�ncer, com dados cl�nicos e gen�ticos do paciente, indicando poss�veis tratamentos dispon�veis\n")
      escreva("B. A intelig�ncia artificial na sa�de permite diagn�sticos precoces e identifica��o de condi��es cl�nicas como tumores, prevenindo complica��es e indicando tratamentos adequados\n")
      escreva("C. O usu�rio utiliza um aplicativo onde descreve seus sintomas e a intelig�ncia artificial d� um diagn�stico substitu�vel de um m�dico junto ao tratamento necess�rio.\n")
      escreva("L. Loja\n")
      escreva("I. Invent�rio")
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
            escreva("Incorreto. A intelig�ncia artificial pode ser utilizada para auxiliar no tratamento de c�ncer, com dados cl�nicos e gen�ticos do paciente, indicando poss�veis tratamentos dispon�veis. Um bom exemplo � o algoritmo desenvolvido pela pesquisadora Daniella Castro Ara�jo, que utiliza de exames de sangue rotineiros, reconhecendo padr�es em grupos de pacientes com e sem c�ncer, assim podendo dar um diagn�stico precoce para prevenir o c�ncer de mama, o atual foco da ferramenta\n")
            escreva("\n")
            escreva("O correto � a letra C - Existem sim aplicativos que utilizam de Intelig�ncia artificial para dar uma sugest�o de diagn�stico, como � o caso da ADA.A ADA foi desenvolvida originalmente para dar apoio na tomada de decis�es cl�nicas, por�m com o aux�lio de equipes m�dicas a plataforma tamb�m conta com um diagn�stico cl�nico automatizado, onde o usu�rio descreve os sintomas e em quest�es de instantes � dado um retorno. Entretanto, n�o substitui uma consulta m�dica com um especialista, e n�o fornece a mesma precis�o no tratamento\n")
            resp = 0
        }

        senao se (alternativa == "b" ou alternativa  == "B") {
            escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Incorreto. A intelig�ncia artificial pode ser utilizada para diagn�sticos precoces e identifica��o de condi��es cl�nicas como tumores, prevenindo complica��es e indicando tratamentos adequados. A tecnologia que permite esse tipo de aplica��o s�o as redes neurais, que junto a um banco de dados analisam pequenas altera��es ou imagens e geram diagn�sticos precoces\n")
            escreva("\n")
            escreva("O correto � a letra C - Existem sim aplicativos que utilizam de Intelig�ncia artificial para dar uma sugest�o de diagn�stico, como � o caso da ADA.A ADA foi desenvolvida originalmente para dar apoio na tomada de decis�es cl�nicas, por�m com o aux�lio de equipes m�dicas a plataforma tamb�m conta com um diagn�stico cl�nico automatizado, onde o usu�rio descreve os sintomas e em quest�es de instantes � dado um retorno. Entretanto, n�o substitui uma consulta m�dica com um especialista, e n�o fornece a mesma precis�o no tratamento\n")
            resp = 0   
        }

        senao se (alternativa == "c" ou alternativa == "C") {
             escreva("\n")
            escreva("* RESPOSTA *")
            escreva("\n")
            escreva("Correto! Existem sim aplicativos que utilizam de Intelig�ncia artificial para dar uma sugest�o de diagn�stico, como � o caso da ADA.A ADA foi desenvolvida originalmente para dar apoio na tomada de decis�es cl�nicas, por�m com o aux�lio de equipes m�dicas a plataforma tamb�m conta com um diagn�stico cl�nico automatizado, onde o usu�rio descreve os sintomas e em quest�es de instantes � dado um retorno. Entretanto, n�o substitui uma consulta m�dica com um especialista, e n�o fornece a mesma precis�o no tratamento\n")
            escreva("E como pr�mio voc� acaba de desbloquear uma curiosidade.\n")
            escreva("\n")
            escreva("Curiosidade: Voc� sabia que o hospital 9 de julho foi o primeiro hospital do mundo a utilizar intelig�ncia artificial para ampliar a seguran�a de seus pacientes? O sistema foi desenvolvido pela Microsoft e � respons�vel pelo monitoramento dos pacientes por meio de sensores inteligentes que detectam movimenta��es fora do padr�o em tempo real, assim prevenindo quedas hospitalares\n")
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
    escreva("[1] Sim  |  [2] N�o\n")
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

  // CADA ITEM TAMB�M POSSUI O SEU VALOR, A DEPENDER DO DA ESCOLHA DO USU�RIO.
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

 
  // FUN��O PARA APRESENTAR O ITEM E VALOR QUE O USU�RIO DESEJA COMPRAR.
 funcao caracter Chek(cadeia nome, inteiro preco){
    caracter voltar   
   faca{
        escreva("\n")
        escreva("Voc� escolheu: ",nome)
        escreva("\n")
        escreva(nome," custa ",preco)
        escreva("\n")
        escreva("Deseja comprar ? \n")
        escreva("[1] Sim  |  [2] N�o \n")
        escreva("Escolha: ")
        leia (voltar)

        }enquanto(voltar != 1 e voltar != 2 )
    
      retorne voltar
  }
  
  //FUN��O PARA CHECAR SE O USU�RIO POSSUI MOEDAS O SUFICIENTE PARA COMPRAR O ITEM.
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

  //FUN��O QUE FAZ DA LOJA.
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

  // CADA PERGUNTA TRANSMITE O SEU N�MERO, EX: PRIMEIRA PERGUNTA TRANSMITE O 1.
  //QUANDO O USU�RIO UTILIZA AS DICAS DE SEU INVENT�RIO, A DEPENDER DO N�MERO DA PERGUNTA � TRANSMITIDA A DICA.
   funcao Dicas(inteiro pergunta){
    escolha(pergunta){
      caso 1:
        escreva("\nDica: A intelig�ncia artificial buscar compreender o racioc�nio humano\n")
      pare

      caso 2:
        escreva("\nDica: Ele � conhecido como o pai da computa��o\n")
      pare

      caso 3:
        escreva("\nDica: A confer�ncia possui o nome de uma universidade\n")
      pare

      caso 4:
        escreva("\nDica: O programa era conhecido por resolver teoremas matematicos\n")
      pare

      caso 5:
        escreva("\nDica: *AN�LISE* as alternativas\n")
      pare

      caso 6:
        escreva("\nDica: Ela chegou no Brasil a 10 anos atr�s\n")
      pare

      caso 7:
        escreva("\nDica: Tods n�s somos estudantes, lembre-se disso\n")
      pare

      caso 8:
        escreva("\nDica: A confer�ncia possui o nome de uma universidade\n")
      pare
    }
  
   }

  // CADA PERGUNTA TRANSMITE O SEU N�MERO, EX: PRIMEIRA PERGUNTA TRANSMITE O 1.
  //QUANDO O USU�RIO UTILIZA AS DICAS DE SEU INVENT�RIO, A DEPENDER DO N�MERO DA PERGUNTA � TRANSMITIDA A ALTERNATIVA INCORRETA.
   funcao Eliminar (inteiro pergunta){
    
    escolha(pergunta){
      caso 1:
        escreva("\nAlternativa incorreta:\n C. A �rea que busca decifrar o c�digo gen�tico humano e replic�-lo nas m�quinas por meio de algoritmos e sistemas\n")
      pare

      caso 2:
        escreva("\nAlternativa incorreta:\n B. Em 1956, com a confer�ncia de Dartmouth, onde o termo *intelig�ncia artificial* foi oficialmente criado.\n")
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
        escreva("\nAlternativa incorreta:\n B. A intelig�ncia artificial na sa�de permite diagn�sticos precoces e identifica��o de condi��es cl�nicas como tumores, prevenindo complica��es e indicando tratamentos adequado\n")
      pare
    }
  
   }

  // FUN��O DO INVET�RIO
  funcao inteiro inventario(inteiro GuardandoGame[], inteiro pergunta, inteiro controle){
    inteiro escolhas
    inteiro volta

    faca{// APRESENTADO QUANTAS DICAS, ELIMINAR ALTERNATIVA E NEXTQUESTIONS O USU�RIO POSSUI.
     escreva("\nVoc� selecionou o invent�rio\n")
           escreva("Voc� possui:\n")
           escreva("\n")
           escreva("Dicas: ", GuardandoGame[3])
           escreva("\n")
           escreva("Eliminar Alternativa: ", GuardandoGame[4])
           escreva("\n")
           escreva("NextQuestion: ", GuardandoGame[5])
           escreva("\n[1] Dica  |  [2] Eliminar Alternativa  |  [3] NextQuestion  |  [4] Sair\n")
           escreva("Escolha: ")
           leia(escolhas)      

        //A DEPENDER DA ESCOLHA O USUARIO, � VERIFICADO SE ELE POSSUI UMA OU MAIS QUANTIDADES.
        escolha(escolhas){
          caso 1:
            se(GuardandoGame[3] >= 1){
              Dicas(pergunta)
              GuardandoGame[3] = GuardandoGame[3] - 1
              volta = 1            
            }senao{
              escreva("\nVoc� n�o possui Dicas o suficiente\n")
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
              escreva("\nVoc� n�o possui Eliminar Quest�es o suficiente\n")
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
            escreva("\nVoc� n�o possui NextQuestion o suficiente\n")
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

  //CASO RETORNE A FUN��O "RESPOSTA DA PERGUNTA" RETORNE 1, O USU�RIO ACERTOU, GANHANDO MOEDAS E PONTOS
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

// FUN��O PARA A PERGUNTA 1
  funcao inteiro pergunta1(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 1 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA.
    inteiro controle // CASO O USU�RIO ESCOLHA O INVET�RIO OU A LOJA, O LA�O DE REPETI��O VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUN��O CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, N�MERO ESSES PASSADOS POR PAR�METROS PARA A FUN��O "CERTOouERRADO".
    cadeia alternativa  
    escreva("\n")
    escreva("\n")
    escreva("Seja muito bem-vindo. Estamos muito felizes em ter voc� por aqui! Para embarcarmos em uma jornada de aprendizado e curiosidades, vamos primeiro ver qual o seu entendimento quando falamos sobre IA.")

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

  // FUN��O PARA A PERGUNTA 2
  funcao inteiro pergunta2(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 2 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA.
    inteiro controle // CASO O USU�RIO ESCOLHA O INVET�RIO OU A LOJA, O LA�O DE REPETI��O VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUN��O CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, N�MERO ESSES PASSADOS POR PAR�METROS PARA A FUN��O "CERTOouERRADO".
    cadeia alternativa  
    escreva("\n")
    escreva("\n")
    escreva("Agora que j� sabemos o que � intelig�ncia artificial e o que essa �rea busca, vamos ver quando surgiu um dos primeiros vest�gios desse conceito")

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

  // FUN��O PARA A PERGUNTA 3
  funcao inteiro pergunta3(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 3 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USU�RIO ESCOLHA O INVET�RIO OU A LOJA, O LA�O DE REPETI��O VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUN��O CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, N�MERO ESSES PASSADOS POR PAR�METROS PARA A FUN��O "CERTOouERRADO".
    cadeia alternativa  

    escreva("\n")
    escreva("\n")
    escreva("Tendo em mente como surgiu a ideia da intelig�ncia artificial, devemos falar do primeiro evento relacionado a IA, que com certeza foi um marco para o seu desenvolvimento, a famosa confer�ncia:")
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

  // FUN��O PARA A PERGUNTA 4
  funcao inteiro pergunta4(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 4 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USU�RIO ESCOLHA O INVET�RIO OU A LOJA, O LA�O DE REPETI��O VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUN��O CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, N�MERO ESSES PASSADOS POR PAR�METROS PARA A FUN��O "CERTOouERRADO".
    cadeia alternativa  
    
    escreva("\n")
    escreva("\n")
    escreva("A confer�ncia de Dartmouth certamente foi de extrema import�ncia para o desenvolvimento da IA, tanto que, pela primeira vez foi apresentado um software que utilizou-se da tecnologia")
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

  // FUN��O PARA A PERGUNTA 5
  funcao inteiro pergunta5(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 5 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USU�RIO ESCOLHA O INVET�RIO OU A LOJA, O LA�O DE REPETI��O VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUN��O CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, N�MERO ESSES PASSADOS POR PAR�METROS PARA A FUN��O "CERTOouERRADO".
    cadeia alternativa  

    escreva("\n")
    escreva("\n")
    escreva("Ao passar dos anos foram realizadas pesquisas, e a especializa��o na IA foi se aprofundando cada vez mais, hoje j� contamos com campos espec�ficos para cada �rea de estudo")
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

  // FUN��O PARA A PERGUNTA 6
    funcao inteiro pergunta6(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 6 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USU�RIO ESCOLHA O INVET�RIO OU A LOJA, O LA�O DE REPETI��O VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUN��O CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, N�MERO ESSES PASSADOS POR PAR�METROS PARA A FUN��O "CERTOouERRADO".
    cadeia alternativa  

    escreva("\n")
    escreva("\n")
    escreva("Como apresentado, vimos que a intelig�ncia artificial est� mais inserida no nosso cotidiano do que pensamos. Seguindo essa linha de racioc�nio, � capaz da intelig�ncia artificial estar presente na educa��o? A resposta � sim, � poss�vel!")
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

  // FUN��O PARA A PERGUNTA 7
    funcao inteiro pergunta7(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 7 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USU�RIO ESCOLHA O INVET�RIO OU A LOJA, O LA�O DE REPETI��O VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUN��O CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, N�MERO ESSES PASSADOS POR PAR�METROS PARA A FUN��O "CERTOouERRADO".
    cadeia alternativa  
    cadeia nome
    escreva("\n")
    escreva("\n")
    escreva("Como apresentado, vimos que a intelig�ncia artificial est� mais inserida no nosso cotidiano do que pensamos. Seguindo essa linha de racioc�nio, � capaz da intelig�ncia artificial estar presente na educa��o? A resposta � sim, � poss�vel!")
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

  // FUN��O PARA A PERGUNTA 8
    funcao inteiro pergunta8(inteiro GuardandoGame[], inteiro vetor[] ){
    inteiro pergunta = 8 // VARIAVEL AUXILIAR NA DICA E NA ELIMINAR ALTERNATIVA
    inteiro controle // CASO O USU�RIO ESCOLHA O INVET�RIO OU A LOJA, O LA�O DE REPETI��O VOLTA PARA A PERGUNTA, CASO O CONTRARIO ELE VAI PARA A FUN��O CERTO OU ERRADO.
    inteiro resp // ALTERNATIVA PARA RECEBER 0 OU 1 QUE A "RESPOSTA DA PERGUNTA" TRANSMITE, N�MERO ESSES PASSADOS POR PAR�METROS PARA A FUN��O "CERTOouERRADO"
    cadeia alternativa  
    escreva("\n")
    escreva("\n")
    escreva("Como apresentado, vimos que a intelig�ncia artificial est� mais inserida no nosso cotidiano do que pensamos. Seguindo essa linha de racioc�nio, � capaz da intelig�ncia artificial estar presente na educa��o? A resposta � sim, � poss�vel!")
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

  //FU��O FIM, IMPRIMENDO QUANTOS PONTOS O USU�RIO CONQUISTOU.
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
