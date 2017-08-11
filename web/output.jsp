
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <jsp:useBean id="surveyData" scope="request" class="beans.SurveyData" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thank you!</title>
    </head>
    <body>
        <h2>Thanks for taking our survey </h2>
        <p>
            <%= request.getParameter("fullName")%>,
            you indicate you are familiar with the following
            programming languages:
        </p>
       
        <jsp:getProperty name="surveyData" property="fullName" />
        <ul>
            <%
                String[] selectedLanguages = surveyData.getProgLangList();
                if (selectedLanguages != null) {
                    for (int i = 0; i < selectedLanguages.length; i++) {
            %>
            <li>
                <%=selectedLanguages[i]%>
            </li>
            <%  }      
                }
            %>    
        </ul>
        
    </body>
</html>
