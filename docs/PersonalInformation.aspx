<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalInformation.aspx.cs" Inherits="WebApplication1.PersonalInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="formValidation.js"></script>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <title>PersonalInformation</title>
</head>
 <body>
<form id="form1" runat="server">
<ul id="ulPI">
<%=menuForUserHome %>
  <li id="hello"><%=hello %></li>
<%=menuForUser %>
<%=adminButtons %>
<%=menuForUserCards %>
</ul>

    <div class="form">


<div id="PIForm">

            <h1>מילוי פרטים</h1>
               <%=message %>
            <label for="PS">סיסמה</label><br />
        <div id="input">
            <input type="password" id="PS" name="password" placeholder="הזן סיסמה חדשה" />            
            <input type="checkbox" id="CBSP" onclick="passwordVisibility()"/>
        </div>
            <p id="PSM" name="passwordMsg" class="msg"></p>

            <label for="FN">שם פרטי</label><br />
            <input type="text" id="FN" name="firstName" placeholder="הזן שם פרטי" />
            <p id="FNM" name="firstNameMsg" class="msg"></p>
           
            <label for="LN">שם משפחה</label><br />
            <input type="text" id="LN" name="lastName" placeholder="הזן שם משפחה" />
            <p id="LNM" name="lastNameMsg" class="msg"></p>

            <label for="BD">תאריך לידה</label><br />
            <input type="date" id="BD" name="birthday" placeholder="הזן תאריך לידה"/>
            <p id="BDM" name="birthdayMsg" class="msg"></p>

            <label for="P">טלפון</label><br />
            <input type="text" id="P" name="phone" placeholder="הזן טלפון" />
            <p id="PM" name="phoneMsg" class="msg"></p>

            <label for="EM">אימייל</label><br />
            <input type="text" id="EM" name="email" placeholder="הזן אימייל" />
            <p id="EMM" name="emailMsg" class="msg"></p>
        
           <%=information %>
           </div>
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

    var input1 = document.getElementById("EM");
    var input2 = document.getElementById("PS");
    var input3 = document.getElementById("FN");
    var input4 = document.getElementById("LN");
    var input5 = document.getElementById("BD");
    var input6 = document.getElementById("P");
    input1.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SPI").click();
        }
    });
    input2.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SPI").click();
        }
    });
    input3.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SPI").click();
        }
    });
    input4.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SPI").click();
        }
    });
    input5.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SPI").click();
        }
    });
    input6.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SPI").click();
        }
    });
</script>