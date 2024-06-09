package PROJETOINTEGRADOR;

import java.util.Scanner;

public class comeco {

    public static void comeco() {
        Scanner input = new Scanner(System.in);
        String nome;
        System.out.println("Olá partcipante, tudo bem ?");
        System.out.println("Seja muito bem-vindo ao nosso Quiz: *INTELIGENCIA ARTIFICIAL - O NOVO NORMAL*");
        System.out.println("Estamos muito felizes de te ter por aqui! Esperamos que o conteudo desse quiz possa contribuir em seus estudos e entedimento sobre a I.A, a tecnologia do momento.\n");
        System.out.println("Para comecar, como podemos de chamar? ");
        System.out.print("Digite seu nome: ");
        nome = input.nextLine();
        System.out.printf("\nSeja muito bem - vindo, %s", nome);
        System.out.println("\nAntes de darmos inicio ao Quiz vamos falar de como ele funciona, já que não se trata de um Quiz chato e normal, e sim de um interativo e divertido!");
        System.out.println("\n * REGRAS *\n");
        System.out.println("* O jogador possui x números de vida, dependendo do modo de jogo!\n* A cada erro, você perde 1 vida, então tome cuidado, pois ao chegar a 0 vidas será game over.");
        System.out.println("* A cada acerto, alem de passar para a proxima pergunta, você ganha pontos e moedas.\n* Você pode trocar suas moedas por #Dicas - #Vida Extra - #NextQuestion - #Eliminar Alternativa.");
        System.out.println("* E tem mais! A cada alternativa certa, você libera uma curiosidade sobre o mundo da tecnologia!\n");
        System.out.println("* REGRAS *");
    }

}
