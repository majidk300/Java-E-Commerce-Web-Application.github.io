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
        background-color: #16a085;
        color: #990000;
        border:2px solid #12876f;
        text-align: center;
    }

    .closebtn {
        margin-left: 15px;
        color: #ffffff;
        float: right;
        font-size: 22px;
        line-height: 20px;
        cursor: pointer;
        transition: 0.3s;
        letter-spacing: 2px ;
        word-spacing: 2px;
    }

    .closebtn:hover {
        color: black;
    }
</style>