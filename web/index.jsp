
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
    </head>
        <body>
        <h1>Simple Salary Calculator</h1>
        <form name="salaryCalculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursWorked" value="" size="50" required></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="hourlyPay" value="" size="50" required></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="preTaxDeduct" value="" size="50" required></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postTaxDeduct" value="" size="50" required></td>
                    </tr>
                    
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
