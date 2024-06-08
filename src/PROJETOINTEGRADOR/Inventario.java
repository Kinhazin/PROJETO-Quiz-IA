
package PROJETOINTEGRADOR;

import java.util.Scanner;


public class Inventario {
    
    
     public static void dicas(int auxiliares) { // Função para chamar as dicas, a depender do número da pergunta
        switch (auxiliares) {
            case 1:
                System.out.println("\nDica: A inteligência artificial buscar compreender o raciocínio humano\n");
                break;
            case 2:
                System.out.println("\nDica: Ele é conhecido como o pai da computação\n");
                break;
            case 3:
                System.out.println("\nDica: A conferência possui o nome de uma universidade\n");
                break;
            case 4:
                System.out.println("\nDica: O programa era conhecido por resolver teoremas matemáticos\n");
                break;
            case 5:
                System.out.println("\nDica: *ANÁLISE* as alternativas\n");
                break;
            case 6:
                System.out.println("\nDica: Ela chegou no Brasil a 10 anos atrás\n");
                break;
            case 7:
                System.out.println("\nDica: Todos nós somos estudantes, lembre-se disso\n");
                break;
            case 8:
                System.out.println("\nDica: A conferência possui o nome de uma universidade\n");
                break;
            default:
                System.out.println("\nDica inválida\n");
                break;
        }
    }
     
     
     public static void eliminar(int auxiliares) { // Função para chamar as alternativas incorretas, a depender do número da pergunta
        switch (auxiliares) {
            case 1:
                System.out.println("\nAlternativa incorreta:\n C. A área que busca decifrar o código genético humano e replicá-lo nas máquinas por meio de algoritmos e sistemas\n");
                break;
            case 2:
                System.out.println("\nAlternativa incorreta:\n B. Em 1956, com a conferência de Dartmouth, onde o termo *inteligência artificial* foi oficialmente criado.\n");
                break;
            case 3:
                System.out.println("\nAlternativa incorreta:\n A. WWDC (Apple Worldwide Developers Conference)\n");
                break;
            case 4:
                System.out.println("\nAlternativa incorreta:\n A. General Problem Solver\n");
                break;
            case 5:
                System.out.println("\nAlternativa incorreta:\n C. Redes Neurais\n");
                break;
            case 6:
                System.out.println("\nAlternativa incorreta:\n B. Udemy\n");
                break;
            case 7:
                System.out.println("\nAlternativa incorreta:\n A. Google Classroom\n");
                break;
            case 8:
                System.out.println("\nAlternativa incorreta:\n B. A inteligência artificial na saúde permite diagnósticos precoces e identificação de condições clínicas como tumores, prevenindo complicações e indicando tratamentos adequados\n");
                break;
            default:
                System.out.println("\nAlternativa inválida\n");
                break;
        }
    }
     
 
    public static int[][] UsarInvetario(int parametros[][], int auxiliares[]) {
        Scanner input = new Scanner(System.in);
        int escolha;
        boolean volta = true;
        parametros[1][6] = 0;
        do {
            volta = true;
            System.out.println("\nVocê selecionou o invetário\n");
            System.out.println("Você possui:");
            System.out.printf("Dicas: %d\n", parametros[1][3]);
            System.out.printf("Eliminar Questão: %d\n", parametros[1][4]);
            System.out.printf("NextQuestion: %d\n", parametros[1][5]);
            System.out.println("\n[1] Dica  |  [2] Eliminar Alternativa  |  [3] NextQuestion  |  [4] Sair");
            System.out.println("Escolha: ");
            escolha = input.nextInt();

            switch (escolha) {
                case 1:
                    parametros[1][6] = 0;
                    if (parametros[1][3] >= 1) {
                        dicas(auxiliares[0]);
                        parametros[1][3] = parametros[1][3] - 1;
                        volta = false;
                    } else if (parametros[1][3] < 1) {
                        System.out.println("Você não possui dicas o suficiente");
                        volta = true;
                    }
                    break;
                case 2:
                    parametros[1][6] = 0;
                    if (parametros[1][4] >= 1) {
                        eliminar(auxiliares[0]);
                        parametros[1][4] = parametros[1][4] - 1;
                        volta = false;
                        
                    } else if (parametros[1][4] < 1) {
                        System.out.println("Você não possui Eliminar alternativas o suficiente");
                        volta = true;
                    }
                    break;
                case 3:
                    if (parametros[1][5] >= 1) {
                        parametros[1][5] = parametros[1][5] - 1;
                        parametros[1][6] = 1;
                        volta = false;
                    } else if (parametros[1][5] < 1) {
                        System.out.println("Você não possui NextQuestion o suficiente");
                        volta = true;
                    }
                    break;
                case 4:
                    parametros[1][6]  = 0;
                    volta = false;
            }
        }while(volta != false);

        return parametros;
    }
}
