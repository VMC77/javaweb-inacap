
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="cl.accesodato.Conexion"%>
<!DOCTYPE html>
<%
    HttpSession sesion=request.getSession();
    if(sesion.getAttribute("conectado")==null || sesion.getAttribute("conectado").equals("false") || sesion.getAttribute("conectado").equals("true-student") ){
        response.sendRedirect("../../index.jsp");
    }else{
    
    }
 %>


<%
        String id=request.getParameter("edit");
        out.println("EL ID ENVIADO ES:"+ id);
         Conexion con=new Conexion();
              con.setSQL("select * from users where id='"+id+"'");
              while(con.getRs().next()){
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDITAR USUARIO</h1>
    </body>
</html>
