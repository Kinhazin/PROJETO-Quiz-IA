package PROJETOINTEGRADOR;

import java.util.Scanner;

public class mododejogo {

    
    
    public static int escolhendoModo() { // Escolha o nivel da dificuldade.
        Scanner input = new Scanner(System.in); int dificuldade;
        
        do {
            System.out.println("\nAgora chegou o momento de decidir a dificuldade do Quiz\n");
            System.out.println("Escolha o nivel de dificuldade:");
            System.out.println("Digite: [1] Facil | [2] Medio | [3] Dificil");
            System.out.print("Escolha: ");
            dificuldade = input.nextInt();
        } while (dificuldade != 1 && dificuldade != 2 && dificuldade != 3);
        return dificuldade;
    }

    
    
    public static String nomeDaDificuldade(int dificuldade) { // A depender da dificuldade escolhida, o NomeDaDificuldade é escolhido.
        String NomeDificuldade = "";
       
        switch (dificuldade) {
            case 1:
                NomeDificuldade = "Facil";
                break;
            case 2:
                NomeDificuldade = "Medio";
                break;
            case 3:
                NomeDificuldade = "Dificil";
                break;
        }
        return NomeDificuldade;
    }
    
    
    
    public static int[][] parametrosDificuldade(int dificuldade) { //Parametros de cada dificuldade.
        int parametros[][] = new int[2][7];

        switch (dificuldade) {
            case 1:
                // Modo facil
                parametros[0][0] = 10; // Pontos ganhos por acerto.
                parametros[0][1] = 20; // Ganhos de moeda por acerto.
                parametros[0][2] = 5;  // Vidas disponiveis. 
                parametros[0][3] = 15; // Valor da "Dica".  
                parametros[0][4] = 25; // Valor do "Eliminiar Questão".
                parametros[0][5] = 35; // Valor do "NextQuestion".
                parametros[0][6] = 45; // Valor da "Vida".
                break;

            case 2:
                // Modo medio
                parametros[0][0] = 25; // Pontos ganhos por acerto.
                parametros[0][1] = 15; // Ganhos de moeda por acerto.
                parametros[0][2] = 3;  // Vidas disponiveis.
                parametros[0][3] = 15; // Valor da "Dica".  
                parametros[0][4] = 25; // Valor do "Eliminiar Questão".
                parametros[0][5] = 35; // Valor do "NextQuestion".
                parametros[0][6] = 45; // Valor da "Vida".
                break;

            case 3:
                // Modo medio
                parametros[0][0] = 50; // Pontos ganhos por acerto.
                parametros[0][1] = 10; // Ganhos de moeda por acerto.
                parametros[0][2] = 1;  // Vidas disponiveis. 
                parametros[0][3] = 15; // Valor da "Dica".
                parametros[0][4] = 25; // Valor do "Eliminiar Questão".
                parametros[0][5] = 35; // Valor do "NextQuestion".
                parametros[0][6] = 45; // Valor da "Vida".
                break;
        }
        return parametros;
    }

    public static int confirmar(int parametros[][], int continuar, String NomeDificuldade){ // Apresentado ao usuário os parametros de cada dificuldade.
        Scanner input = new Scanner(System.in); 
        
        System.out.printf("\nVoce selecionou o nivel: %s\n",NomeDificuldade);
        System.out.println("\nEste modo de jogo possui as seguintes regras:\n");
        System.out.println(" * GANHOS: *");
        System.out.printf("Ganhos de pontos a cada acerto: %d",parametros[0][0]);
        System.out.printf("\nGanho de moedas a cada acerto: %d",parametros[0][1]);
        System.out.printf("\nQuantidade de vidas: %d\n", parametros[0][2]);
        System.out.println("\n * CUSTOS *");
        System.out.printf("Dicas: %d moedas",parametros[0][3]);
        System.out.printf("\nEliminar uma alternativa: %d moedas",parametros[0][4]);
        System.out.printf("\nNextQuestion: %d moedas",parametros[0][5]);
        System.out.printf("\nVidas: %d moedas\n",parametros[0][6]);
        
        do{
            System.out.println("\nDeseja continuar ?");
            System.out.println("[1] Sim | [2] Nao");
            System.out.print("Escolha:");
            continuar = input.nextInt();
        }while(continuar != 1 && continuar !=2);
    
        return continuar;
    }

    
    public static int[][] ModoDeJogo(int parametros[][]) { //O usuario pode escolher a dificuldade novamente caso não goste dos parametros apresentado.
        int dificuldade, continuar = 0;
        String NomeDificuldade;       
        do {
            dificuldade = escolhendoModo();
            NomeDificuldade = nomeDaDificuldade(dificuldade);
            parametros = parametrosDificuldade(dificuldade);
            continuar = confirmar(parametros, continuar, NomeDificuldade);
        } while (continuar != 1);       
        return parametros;
    }
    
    
    
    public static int[][]Estoque(int parametros[][]){
        parametros[1][0] = 0; // Quantidades de pontos do usuário.
        parametros[1][1] = 0; // Quantidade de moedas do usuário.
        parametros[1][2] = parametros[0][2]; // Quantidade de vidas do jogador.
        parametros[1][3] = 0; // Quantidade de dicas do usuário.
        parametros[1][4] = 0; // Quantidade de Eliminar alternativas do usuário.
        parametros[1][5] = 0; // Quantidade de NextQuestion do usuário.
        parametros[1][6] = 0; // Auxiliar do NextQuestion.
        
        return parametros;
    } 
    
    public static void mostrandoPontuacao(int parametros[][]){
        System.out.printf("\n\nPontos: %d\n",parametros[1][0]);
        System.out.printf("Moedas: %d\n",parametros[1][1]);
        System.out.printf("Vidas: %d\n",parametros[1][2]);  
    }

    

    public static void main(String[] args) {
        int parametros[][] = new int [2][7];
        parametros = ModoDeJogo(parametros);
    }
}
