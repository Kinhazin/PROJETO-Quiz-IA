package PROJETOINTEGRADOR;

import static PROJETOINTEGRADOR.Loja.Loja;

public class Perguntas {

    public static int[][] PrimeiraPegunta(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1Âº Para enviar qual pergunta Ã©, 2Âº Variavel de controle de laÃ§o, 3Âº para saber se a resposta estÃ¡ certa ou errada            
        char alternativa;
        auxiliares[0] = 1;
        
        System.out.println("\n\n* PERGUNTA 1 *");
        System.out.println("\nSeja muito bem-vindo. Estamos muito felizes em ter você por aqui! Para embarcarmos "
                + "em uma jornada de aprendizado e curiosidades, \nvamos primeiro ver qual o seu entendimento quando falamos sobre IA.");
        do {           
            mododejogo.mostrandoPontuacao(parametros);
            alternativa = Enunciados.enunciadoPergunta1();

            if (alternativa == 'a' || alternativa == 'A' || alternativa == 'b' || alternativa == 'B' || alternativa == 'c' || alternativa == 'C') {
                auxiliares[2] = Respostas.resposta1(alternativa);
                auxiliares[1] = 1;
            } else if (alternativa == 'l' || alternativa == 'L') {
                parametros = Loja(parametros);
                auxiliares[1] = 0;
            } else if (alternativa == 'i' || alternativa == 'I') {
                parametros = Inventario.UsarInvetario(parametros, auxiliares);
                auxiliares[1] = parametros[1][6];
            }
        } while (auxiliares[1] != 1);
        parametros = CertoouErrado.VerificandoResposta(parametros, auxiliares);
        return parametros;
    }

    public static int[][] SegundaPegunta(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1º Para enviar qual pergunta é a, 2º Variavel de controle de laço, 3º para saber se a resposta está certa ou errada           
        char alternativa;
        auxiliares[0] = 2;
        
        System.out.println("\n\n* PERGUNTA 2 *");
        System.out.println("\nAgora que já sabemos o que é inteligência artificial e o que essa área busca, vamos ver quando surgiu um dos primeiros vestígios desse conceito.");
        do {          
            mododejogo.mostrandoPontuacao(parametros);
            alternativa = Enunciados.enunciadoPergunta2();

            if (alternativa == 'a' || alternativa == 'A' || alternativa == 'b' || alternativa == 'B' || alternativa == 'c' || alternativa == 'C') {
                auxiliares[2] = Respostas.resposta2(alternativa);
                auxiliares[1] = 1;
            } else if (alternativa == 'l' || alternativa == 'L') {
                parametros = Loja(parametros);
                auxiliares[1] = 0;
            } else if (alternativa == 'i' || alternativa == 'I') {
                parametros = Inventario.UsarInvetario(parametros, auxiliares);
                auxiliares[1] = parametros[1][6];
            }
        } while (auxiliares[1] != 1);
        parametros = CertoouErrado.VerificandoResposta(parametros, auxiliares);
        return parametros;
    }

    public static int[][] terceiraPegunta(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1º Para enviar qual pergunta é a, 2º Variavel de controle de laço, 3º para saber se a resposta está certa ou errada              
        char alternativa;
        auxiliares[0] = 3;

        System.out.println("\n\n* PERGUNTA 3 *");
        System.out.println("\nTendo em mente como surgiu a ideia da inteligência artificial, devemos falar do primeiro evento relacionado a IA,\n"
                + "que com certeza foi um marco para o seu desenvolvimento, a famosa conferência:");
        do {         
            mododejogo.mostrandoPontuacao(parametros);
            alternativa = Enunciados.enunciadoPergunta3();

            if (alternativa == 'a' || alternativa == 'A' || alternativa == 'b' || alternativa == 'B' || alternativa == 'c' || alternativa == 'C') {
                auxiliares[2] = Respostas.resposta3(alternativa);
                auxiliares[1] = 1;
            } else if (alternativa == 'l' || alternativa == 'L') {
                parametros = Loja(parametros);
                auxiliares[1] = 0;
            } else if (alternativa == 'i' || alternativa == 'I') {
                parametros = Inventario.UsarInvetario(parametros, auxiliares);
                auxiliares[1] = parametros[1][6];
            }
        } while (auxiliares[1] != 1);
        parametros = CertoouErrado.VerificandoResposta(parametros, auxiliares);
        return parametros;
    }

    public static int[][] quartaPegunta(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1º Para enviar qual pergunta é a, 2º Variavel de controle de laço, 3º para saber se a resposta está certa ou errada            
        char alternativa;
        auxiliares[0] = 4;

        System.out.println("\n\n* PERGUNTA 4 *");
        System.out.println("\nA conferência de Dartmouth certamente foi de extrema importÃ¢ncia para o desenvolvimento da IA, tanto que,\n"
                + "pela primeira vez foi apresentado um software que utilizou-se da tecnologia.");
        do {           
            mododejogo.mostrandoPontuacao(parametros);
            alternativa = Enunciados.enunciadoPergunta4();

            if (alternativa == 'a' || alternativa == 'A' || alternativa == 'b' || alternativa == 'B' || alternativa == 'c' || alternativa == 'C') {
                auxiliares[2] = Respostas.resposta4(alternativa);
                auxiliares[1] = 1;
            } else if (alternativa == 'l' || alternativa == 'L') {
                parametros = Loja(parametros);
                auxiliares[1] = 0;
            } else if (alternativa == 'i' || alternativa == 'I') {
                parametros = Inventario.UsarInvetario(parametros, auxiliares);
                auxiliares[1] = parametros[1][6];
            }
        } while (auxiliares[1] != 1);
        parametros = CertoouErrado.VerificandoResposta(parametros, auxiliares);
        return parametros;
    }

    
    public static int[][] quintaPegunta(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1º Para enviar qual pergunta é a, 2º Variavel de controle de laço, 3º para saber se a resposta está certa ou errada            
        char alternativa;
        auxiliares[0] = 5;
        
        System.out.println("\n\n* PERGUNTA 5 *");
        System.out.println("\nAo passar dos anos foram realizadas pesquisas, e a especialização na IA foi se aprofundando cada vez mais, hoje já contamos com campos específicos para cada área de estudo.");
        do {   
            mododejogo.mostrandoPontuacao(parametros);
            alternativa = Enunciados.enunciadoPergunta5();

            if (alternativa == 'a' || alternativa == 'A' || alternativa == 'b' || alternativa == 'B' || alternativa == 'c' || alternativa == 'C') {
                auxiliares[2] = Respostas.resposta5(alternativa);
                auxiliares[1] = 1;
            } else if (alternativa == 'l' || alternativa == 'L') {
                parametros = Loja(parametros);
                auxiliares[1] = 0;
            } else if (alternativa == 'i' || alternativa == 'I') {
                parametros = Inventario.UsarInvetario(parametros, auxiliares);
                auxiliares[1] = parametros[1][6];
            }
        } while (auxiliares[1] != 1);
        parametros = CertoouErrado.VerificandoResposta(parametros, auxiliares);
        return parametros;
    }

    public static int[][] sextaPegunta(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1º Para enviar qual pergunta é a, 2º Variavel de controle de laço, 3º para saber se a resposta está certa ou errada            
        char alternativa;
        auxiliares[0] = 6;

        System.out.println("\n\n* PERGUNTA 6 *");    
        System.out.println("\nComo apresentado, vimos que a inteligência artificial está mais inserida no nosso cotidiano do que pensamos. Seguindo essa linha de raciocínio,\n"
                + "é capaz da inteligência artificial estar presente na educação? A resposta é sim, é possível!");
        do {
            mododejogo.mostrandoPontuacao(parametros);
            alternativa = Enunciados.enunciadoPergunta6();

            if (alternativa == 'a' || alternativa == 'A' || alternativa == 'b' || alternativa == 'B' || alternativa == 'c' || alternativa == 'C') {
                auxiliares[2] = Respostas.resposta6(alternativa);
                auxiliares[1] = 1;
            } else if (alternativa == 'l' || alternativa == 'L') {
                parametros = Loja(parametros);
                auxiliares[1] = 0;
            } else if (alternativa == 'i' || alternativa == 'I') {
                parametros = Inventario.UsarInvetario(parametros, auxiliares);
                auxiliares[1] = parametros[1][6];
            }
        } while (auxiliares[1] != 1);
        parametros = CertoouErrado.VerificandoResposta(parametros, auxiliares);
        return parametros;
    }

    public static int[][] setimaPegunta(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1º Para enviar qual pergunta é a, 2º Variavel de controle de laço, 3º para saber se a resposta está certa ou errada          
        char alternativa;
        auxiliares[0] = 7;

        System.out.println("\n\n* PERGUNTA 7 *");
        System.out.println("\nContudo, para a inteligência artificial estar tão inserida na educação nos dias de hoje, houve um ponto de partida. Um dos primeiros softwares a utilizar IA,\n"
                + "resolvendo problemas matemáticos descritos em palavras e fornecendo um retorno avaliativo com base no desempenho do aluno.");
        do {                   
            mododejogo.mostrandoPontuacao(parametros);
            alternativa = Enunciados.enunciadoPergunta7();

            if (alternativa == 'a' || alternativa == 'A' || alternativa == 'b' || alternativa == 'B' || alternativa == 'c' || alternativa == 'C') {
                auxiliares[2] = Respostas.resposta7(alternativa);
                auxiliares[1] = 1;
            } else if (alternativa == 'l' || alternativa == 'L') {
                parametros = Loja(parametros);
                auxiliares[1] = 0;
            } else if (alternativa == 'i' || alternativa == 'I') {
                parametros = Inventario.UsarInvetario(parametros, auxiliares);
                auxiliares[1] = parametros[1][6];
            }
        } while (auxiliares[1] != 1);
        parametros = CertoouErrado.VerificandoResposta(parametros, auxiliares);
        return parametros;
    }

    public static int[][] oitavaPegunta(int parametros[][]) {
        int auxiliares[] = new int[3]; // 1º Para enviar qual pergunta é a, 2º Variavel de controle de laço, 3º para saber se a resposta está certa ou errada          
        char alternativa;
        auxiliares[0] = 8;

        System.out.println("\n\n* PERGUNTA 8 *");
        System.out.println("\nNão se limitando apenas à educação, a inteligência artificial vem cada vez mais ganhando espaço na área da saúde, contribuindo com acompanhamentos personalizados e decisões médicas.");
        do {
            mododejogo.mostrandoPontuacao(parametros);
            alternativa = Enunciados.enunciadoPergunta8();

            if (alternativa == 'a' || alternativa == 'A' || alternativa == 'b' || alternativa == 'B' || alternativa == 'c' || alternativa == 'C') {
                auxiliares[2] = Respostas.resposta7(alternativa);
                auxiliares[1] = 1;
            } else if (alternativa == 'l' || alternativa == 'L') {
                parametros = Loja(parametros);
                auxiliares[1] = 0;
            } else if (alternativa == 'i' || alternativa == 'I') {
                parametros = Inventario.UsarInvetario(parametros, auxiliares);
                auxiliares[1] = parametros[1][6];
            }
        } while (auxiliares[1] != 1);
        parametros = CertoouErrado.VerificandoResposta(parametros, auxiliares);
        return parametros;
    }

}
