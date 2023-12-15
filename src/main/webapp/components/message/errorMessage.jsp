<%

    String alertMessage = (String) session.getAttribute("alertMessage");

    if (alertMessage != null) {

%>

<div class="alert">
    <span class="closebtn" onclick="this.parentElement.style.display = 'none';">&times;</span> 
    <strong><%=alertMessage%></strong> 
</div>

<%
        session.removeAttribute("alertMessage");
    }

%>

<style>
    .alert {
        padding: 20px;
        background-color: #ffffff;
        color: #990000;
        border:2px solid #12876f;
        text-align: center;
    }

    .closebtn {
        margin-left: 15px;
        color: #ffffff;
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