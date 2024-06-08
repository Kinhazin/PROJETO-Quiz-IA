
package PROJETOINTEGRADOR;


public class CertoouErrado {
    
    public static int[][]VerificandoResposta(int parametros[][],int auxiliares[]){
        if(auxiliares[2]  == 0){
            parametros[1][2] = parametros[1][2] - 1;
        }else if(auxiliares[2] == 1){
            parametros[1][0] = parametros[1][0] + parametros[0][0];
            parametros[1][1] = parametros[1][1] + parametros[0][1];
        }
        return parametros;
    }
    
    
}
