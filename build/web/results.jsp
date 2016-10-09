
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
    </head>
    
    <%
        String hoursWorked = request.getParameter("hoursWorked");
        String hourlyPay = request.getParameter("hourlyPay");
        String preTaxDeduct = request.getParameter("preTaxDeduct");
        String postTaxDeduct = request.getParameter("postTaxDeduct");    
    %>
    <body>
        <h1>Salary Information</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
