<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logIn.aspx.cs" Inherits="WebApplication1.logIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="formValidation.js"></script>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <title>logIn</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="logInForm">
        <h1>כניסה</h1>
            <label for="UN">שם משתמש</label><br />
            <input type="text" id="UN" name="userName" placeholder="הזן שם משתמש"/>
            <p id="UNM" name="userNameMsg" class="msg"></p>
        
            <label for="PS">סיסמה</label><br />
        <div id="input">
            <input type="password" id="PS" name="password" placeholder="הזן סיסמה" />            
            <input type="checkbox" id="CBSP" onclick="passwordVisibility()"/>
        </div>
            <p id="PSM" name="passwordMsg" class="msg"></p>

            <p id="LIM" name="logInMsg" class="msg"><%=logInMsg %></p>
        
            <input type="submit" id="SLI" name="submitLogIn" value="כניסה" onclick="return validateFormLogIn()"/>     

   </div>
</form>
</body>
</html>

<script>
    function passwordVisibility() {
        var x = document.getElementById("PS");
        if (x.type === "password") {
            x.type = "text";
        }
        else {
            x.type = "password";
        }
    }

    var input1 = document.getElementById("UN");
    var input2 = document.getElementById("PS");
    input1.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SLI").click();
        }
    });
    input2.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SLI").click();
        }
    });
</script>