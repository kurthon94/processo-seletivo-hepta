/**Classe para objeto do tipo ConnectionFactory, para conexão com a database MySql, onde serão contidos, métodos para o mesmo.
* @author Deomar Júnior 
* @version 1.0
* @since release 1.1
*/
package dao;
/** Método para importação das classe .sql, necessarias para a conexão.*/
import java.sql.Connection;
import java.sql.DriverManager;

/** Método para conexão e autenticação com a banco de dados mercado no SGBD MySql, necessarias para a conexão.*/
public class ConnectionFactory {
    public Connection getConexao(){
        /** Método para tratamento de exceção.*/
        try{
           Class.forName("com.mysql.jdbc.Driver");
           return DriverManager.getConnection("jdbc:mysql://localhost/mercado","root","");
        }catch(Exception erro){
            throw new RuntimeException("Erro 1: " +erro);
        }
    }
    
}
