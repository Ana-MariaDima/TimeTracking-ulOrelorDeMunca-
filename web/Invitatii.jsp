
<%@page import="core.Invitatie"%>
<%@page import="java.util.ArrayList"%>
<%@page import="core.DBLinker"%>
<%@page import="core.Companie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% HttpSession current_session = request.getSession();
    if (current_session.getAttribute("user_admin") == null) {
        response.sendRedirect("/TimeTracking/LoginAdmin.jsp");
    }

    Companie companie = (Companie) current_session.getAttribute("user_admin");

    ArrayList<Invitatie> invitatii_companie = DBLinker.getInvitatii(companie.id_companie);


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center;font-size:45px;color: cyan;margin-top: 2%;">Invitatii Existente</h1>

        <table>
            <thead>
            <th style="text-align: center;font-size:30px; color: crimson;"> Cod Invitatie </th>
            <th style="text-align: center;font-size:30px; color: crimson;"> Folosita </th>
        </thead>

        <tbody>
            <% for (int i = 0; i < invitatii_companie.size(); i++) {%> 
            <tr class="<%= i==invitatii_companie.size()-1?"last":"" %>">
                <td>
                    <%= invitatii_companie.get(i).cod_invitatie%>
                </td>
                <td style="text-align: center;" >
                    <%= invitatii_companie.get(i).folosita%>
                </td>
            </tr>
            <% }%>
        </tbody>
    </table>
        
        <style>
            
            
             body{
         // background:#f2f2f3;
          background-image:url('10.jpg');
          background-size:1600px 1100px; 
          // background-size: cover;
                background-attachment: fixed;
      }
            table{
                margin:0 auto;
                margin-top:20%;
                font-size:5;
            }
            th{
                border-bottom:1px dashed black;
            }
            
            tbody td{
                border-left:1px dashed black;
                border-right:1px dashed black;
                padding:10px;
            }
            .last td{
                border-bottom:1px dashed black;
            }
        </style>
</body>
</html>
