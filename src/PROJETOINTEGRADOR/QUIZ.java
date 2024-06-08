package PROJETOINTEGRADOR;

import static PROJETOINTEGRADOR.Perguntas.SegundaPegunta;
import static PROJETOINTEGRADOR.comeco.comeco;
import static PROJETOINTEGRADOR.mododejogo.Estoque;
import static PROJETOINTEGRADOR.mododejogo.ModoDeJogo;

public class QUIZ {

    public static void main(String[] args) {
        int parametros[][] = new int[2][7];
        comeco(); // Introdução ao Quiz
        parametros = ModoDeJogo(parametros); // Escolhendo oa dificuldade do Quiz
        parametros = Estoque(parametros); //   
        parametros = Perguntas.PrimeiraPegunta(parametros);
        if (parametros[1][2] >= 1) {
            parametros = SegundaPegunta(parametros); 
            if (parametros[1][2] >= 1) {
                parametros = Perguntas.terceiraPegunta(parametros);
                if (parametros[1][2] >= 1) {
                    parametros = Perguntas.quartaPegunta(parametros);
                    if (parametros[1][2] >= 1) {
                        parametros = Perguntas.quintaPegunta(parametros);
                        if (parametros[1][2] >= 1) {
                            parametros = Perguntas.sextaPegunta(parametros);
                            if (parametros[1][2] >= 1) {
                                parametros = Perguntas.setimaPegunta(parametros);
                                if (parametros[1][2] >= 1) {
                                    Perguntas.oitavaPegunta(parametros);
                                    Fim.FinalDoQuiz(parametros);
                                } else {
                                    Fim.FinalDoQuiz(parametros);
                                }
                            } else {
                                Fim.FinalDoQuiz(parametros);
                            }
                        } else {
                            Fim.FinalDoQuiz(parametros);
                        }
                    } else {
                        Fim.FinalDoQuiz(parametros);
                    }
                } else {
                    Fim.FinalDoQuiz(parametros);
                }
            } else {
                Fim.FinalDoQuiz(parametros);
            }
        } else {
            Fim.FinalDoQuiz(parametros);
        }

    }

}
