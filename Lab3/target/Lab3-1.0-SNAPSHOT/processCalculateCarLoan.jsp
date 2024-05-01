<%-- 
    Document   : processCalculateCarLoan
    Created on : 21 Apr 2024, 3:33:36 am
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Perform Car Loan Calculation</h1>
        <fieldset>
            <%
                String loanamount = request.getParameter("loanamount");
                String periodoption = request.getParameter("period");
                double interestrate = 18.78571429;
                double result = 0;

                if (loanamount != null && periodoption != null) {
                int loanAmountInt = Integer.parseInt(loanamount);
                int periodInt = Integer.parseInt(periodoption);

                switch(periodoption){
                case "3": 
                case "4": 
                case "5": 
                case "7": 
                    result = Math.round((interestrate/100) * loanAmountInt * periodInt);
                    break;     
                    }
                }
         %>


            <h2 style="color: blue;">Details of car loan:</h2>
            
            <p>Loan Request : <%=loanamount%></p>
            <p>Period of payment : <%=periodoption%></p>
            
            <p>Total Loan (+ interest) : <%= result + ""%> </p>

        </fieldset>
    </body>
</html>
