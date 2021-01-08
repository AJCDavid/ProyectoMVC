<%-- 
    Document   : graficacircular
    Created on : 03-dic-2020, 8:48:52
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="graficasfiltro.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
         try{
             DefaultPieDataset data = new DefaultPieDataset();
             while(rs.next()){
                 data.setValue(rs.getString("Nombre")+ "\nTotal:"+String.valueOf(rs.getInt(2)), rs.getInt(2));
             }
             JFreeChart grafico =ChartFactory.createPieChart("Total Platillos Vendidos", data, true, true,true);
             response.setContentType("image/PNG");
             OutputStream sa = response.getOutputStream();
             
             ChartUtilities.writeChartAsJPEG(sa, grafico, 800, 650);
         }catch (Exception ex){
           out.print(ex);
         }
        %>
    </body>
</html>
