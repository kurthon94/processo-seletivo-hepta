/**Classe para objeto do tipo Produto, onde serão contidos, métodos e valores para os mesmos.
* @author Deomar Júnior 
* @version 1.0
* @since release 1.1
*/
package model;

/** Método para criação da classe Produto, com as suas variaveis.*/
public class Produto {
    private int codigo_produto;
    private String descricao_produto;
    private double preco_produto;
    
/** Método GET e SET para uso das variaveis.*/
    public int getCodigo_produto() {
        return codigo_produto;
    }

    public void setCodigo_produto(int codigo_produto) {
        this.codigo_produto = codigo_produto;
    }

    public String getDescricao_produto() {
        return descricao_produto;
    }

    public void setDescricao_produto(String descricao_produto) {
        this.descricao_produto = descricao_produto;
    }

    public double getPreco_produto() {
        return preco_produto;
    }

    public void setPreco_produto(double preco_produto) {
        this.preco_produto = preco_produto;
    }
             
}
