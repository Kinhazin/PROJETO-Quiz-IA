
package PROJETOINTEGRADOR;

import java.util.Scanner;

public class Loja {
    
    static int LojaAnuncio(){
        Scanner input = new Scanner(System.in);
        int escolha;
        do{
            System.out.println("\n* LOJA *    ");
            System.out.println("[1] Vida | [2] Dicas | [3] Elimimar Alternativas | [4] NextQuestion | [5] Sair\n");
            System.out.print("Escolha:");
            escolha = input.nextInt();
        }while(escolha != 1 && escolha  != 2 && escolha != 3 && escolha != 4 && escolha !=5);
                
        return escolha;
    }
    
    
    public static String NomeLoja(int escolha) {
        String nome ="";

        switch (escolha) {
            case 1:
                nome = "Vida";
                break;
            case 2:
                nome = "Dicas";
                break;
            case 3:
                nome = "Eliminar Alternativa";
                break;
            case 4:
                nome = "NextQuestion";
                break;
        }
        return nome;
    }
    
  
    
    public static int Custo(int escolha, int parametros[][]){
        int preço = 0;
        switch(escolha){
            case 1:
                preço = parametros[0][6];
                break;
            case 2:
                preço = parametros[0][3];
                break;
            case 3:
                preço = parametros[0][4];
                break;
            case 4:
                preço = parametros[0][5];
                break;
        }
        return preço;
    } 
        
    
  
    public static int check(String nome, int preço) {
        Scanner input = new Scanner(System.in);
        int confirmar;
        do {
            System.out.printf("\nVocê escolheu: %s\n", nome);
            System.out.printf("%s custa: %d\n", nome, preço);
            System.out.println("Deseja comprar ?");
            System.out.println("[1] Sim | [2] Não");
            confirmar = input.nextInt();
        } while (confirmar != 1 && confirmar != 2);
        return confirmar;
    }
    
    
    public static int[][]ChecandocCompra(int preço, int parametros[][], int escolha){
        if(parametros[1][1] >= preço){
            parametros[1][1] = parametros[1][1] - preço;
            switch(escolha){
                case 1:
                    parametros[1][2] = parametros[1][2] + 1;
                    break;
                case 2:
                    parametros[1][3] = parametros[1][3] + 1;
                    break;
                case 3:
                    parametros[1][4] = parametros[1][4] + 1;
                    break;
                case 4:
                    parametros[1][5] = parametros[1][5] + 1;
                    break;
                    
            }
        }else{
            System.out.println("\nMOEDAS INSUFICIENTE\n");
        }
        return parametros;
    }

    public static int[][] Loja(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1º Escolha, 2º Preço, 3ºConfimar
        boolean voltando = true; String nome;     

        do {
            auxiliares[0] = LojaAnuncio();
            if (auxiliares[0] != 5) {
                nome = NomeLoja(auxiliares[0]);
                auxiliares[1] = Custo(auxiliares[0], parametros);
                auxiliares[2] = check(nome, auxiliares[1]);

                if (auxiliares[2] == 1) {
                    parametros = ChecandocCompra(auxiliares[1], parametros, auxiliares[0]);
                    voltando = true;
                } else if (auxiliares[2] == 1) {
                    voltando = true;
                }

            } else {
                voltando = false;
            }
        } while (voltando != false);
        return parametros;
    }

    
    public static void main(String[] args) {
        
    }
}
