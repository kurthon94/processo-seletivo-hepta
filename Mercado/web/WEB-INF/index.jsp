<!-- Fazendo o import das classes Java.-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>  
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!-- Iniciando a Página index.jsp.-->
<html>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="./css/css.css"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Estoque Supermercado</title>
    </head>
    <body align="center">
        <table id="tabela" border="1" align="center">
            <tr>
                <th>
        <table id="tabela" border="1" align="center">
            <tr>
                <th><h1>Estoque Supermercado</h1></th>
            </tr>
        </table>
        <form action ="index.jsp" method ="post">
            <label>Descrição</label><br/>
            
            <input type ="text" name ="descricao"/><br/>
            
            <button type ="submit">
                OK
            </button>
        </form>
        <table id="tabela" border="1" align="center">
            <tr>
                <th><h2>Produtos</h2></th>
            </tr>
        </table>
        <!-- Trecho de código para a impressão da lista na tela.-->
        <%
            try{
               out.print("<table id='tabela' border ='1' align='center'>");
               out.print("<tr>");
               out.print("<th>Codigo</th><th>Descrição</th><th>Preço</th><th>Editar</th><th>Excluir</th>");
               ProdutoDAO prd = new ProdutoDAO();              
               if(request.getParameter("descricao") == "" || request.getParameter("descricao") == null){
                   ArrayList<Produto> lista = prd.ListarTodos();
                   for(int num = 0; num < lista.size(); num++){
                       out.print("<tr>");
                       out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
                       out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
                       out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");                                            
                       out.print("<td><a  href ='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+" '>CLIQUE</a></td>"); 
                       out.print("<td><a  href ='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+" '>CLIQUE</a></td>");                      
                       out.print("</tr>");
                   }                   
               }else{
                    ArrayList<Produto> lista = prd.ListarTodosDescricao(request.getParameter("descricao"));
                   for(int num = 0; num < lista.size(); num++){
                       out.print("<tr>");
                       out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
                       out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
                       out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");                       
                       out.print("<td><a  href ='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+" '>CLIQUE</a></td>"); 
                       out.print("<td><a  href ='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+" '>CLIQUE</a></td>");                      
                       out.print("</tr>");
                   }
                   
               }
              
               out.print("</tr>");
               out.print("</table>");
            }catch(Exception erro){
                throw new RuntimeException("Erro 10: " +erro);
            }
        %>
        <button><a href ="inserir.jsp">NOVO</a></button>
           </th>
          </td>
        </table>
    </body>
</html>
