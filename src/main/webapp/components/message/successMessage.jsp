<%

    String message = (String) session.getAttribute("message");
    
   if(message!=null){

%>

<div class="alert">
    <span class="closebtn" onclick="this.parentElement.style.display = 'none';">&times;</span> 
    <strong><%=message%></strong> 
</div>

<%
    
     session.removeAttribute("message");
    }
    %>

<style>
    .alert {
        padding: 20px;
        background-color: #16a085;
        color: white;
        border:2px solid #12876f;
    }

    .closebtn {
        margin-left: 15px;
        color: white;
        font-weight: bold;
        float: right;
        font-size: 22px;
        line-height: 20px;
        cursor: pointer;
        transition: 0.3s;
    }

    .closebtn:hover {
        color: black;
    }
</style>