
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
    </head>
    
    <%
        double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
        double hourlyPay = Double.parseDouble(request.getParameter("hourlyPay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("preTaxDeduct"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));
        double grossPay;
        double taxAmount;
        double postTaxPay;
        double netPay;
        double otHours;
        double otPayRate;
        double otPay;
        double regularHours;
        double regularPay;
        double otPayIncrease= 1.5;
        
        if (hoursWorked > 40){
            regularHours = 40;
            otHours = hoursWorked - regularHours;
            otPayRate = hourlyPay * otPayIncrease;
            otPay = otHours * otPayRate;
            regularPay = regularHours * hourlyPay;
            grossPay = regularPay + otPay;
        } else {
            otHours = 0;
            otPayRate = 0;
            grossPay = hoursWorked * hourlyPay;
        }
        
        double taxablePay = grossPay - preTaxDeduct;
        
        if (grossPay < 500){
            taxAmount = taxablePay * .18;
        } else {
            taxAmount = taxablePay * .22;
        }
        
        postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct;
        
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
                    <td><%= otHours %></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otPayRate %></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxablePay %></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
