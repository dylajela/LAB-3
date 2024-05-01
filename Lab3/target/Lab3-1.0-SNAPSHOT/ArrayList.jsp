<%-- 
    Document   : ArrayList
    Created on : 2 May 2024, 4:41:07 am
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
        <%
            //Create ArrayList object...
            ArrayList<String> studentList = new ArrayList<String>();
            
            //Store student name...
            studentList.add(0, "Mohamad Azam");
            studentList.add(1, "Peter Chong");
            studentList.add(2, "Rahimah Mensor");
            studentList.add(3, "Sri Devi");
            studentList.add(4, "Ng Hue Ween");
            studentList.add(5, "S. Ngarajan");
            
            //Display the number of records..
            out.println("<p>The number of records in AaryList are " +
                    studentList.size() + "</p>");
            
            //Populate a list of students...
            for (int i=0; i < studentList.size(); i++){
                out.println("<p>Record " + (i+1)+ " is " + studentList.get(i) + "</p>");
            }
        %>

        <footer>&copy2024- Adilah Ainaa</footer>
    </body>
</html>
