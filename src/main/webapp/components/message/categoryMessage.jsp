<%

    String message = (String) session.getAttribute("categorymessage");
    
   if(message!=null){

%>

<div class="alert">
    <strong style="color: #009999;"><%=message%></strong> 
</div>

<%
    
     session.removeAttribute("categorymessage");
    }
    %>
