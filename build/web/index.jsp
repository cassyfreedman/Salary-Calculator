
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
    </head>
    <%
        Date today = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String ddMMyyyyToday = dateFormat.format(today);

        SimpleDateFormat dateFormatUS = new SimpleDateFormat("MM/dd/yyyy");
        String MMddyyyyToday = dateFormatUS.format(today);

    %>    
    
    <body>
        <h1>Salary Calculator</h1>
        <form name="salaryCalculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursWorked" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="hourlyPay" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="preTaxDeduct" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="Post tax Deduct" value="" size="50"</td>
                    </tr>
                    
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
