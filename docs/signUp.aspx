<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="WebApplication1.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="formValidation.js"></script>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <title>signUp</title>
</head>
 <body>
<form id="form1" runat="server">
    <ul>
  <li class="Li" id="houseButton"><a href="openPage.aspx" id="home"><img src="בית.png" id="house"/></a></li>
  <li id="hello"><%=hello %></li>
  <li class="Li"><button id="logOut" name="logOutB" class="button">התנתק</button></li>
  <li class="Li"><a href="PersonalInformation.aspx">עדכון פרטים</a></li>
  <li class="here Li"><a href="signUp.aspx">רישום</a></li>
  <li class="Li"><a href="adminPage.aspx">טבלת משתמשים</a></li>
  <li class="Li"><a href="instructions.aspx">הנחיות</a></li>
  <li class="Li"><a href="mainPage.aspx">ערכת הקלפים</a></li>
</ul>

        <div class="form">


       <div id="signUpForm">

            <h1>רישום</h1>
            <label for="UN">שם משתמש</label><br />
            <input type="text" id="UN" name="userName" placeholder="הזן שם משתמש" />
            <p id="UNM" name="userNameMsg" class="msg"><%=userNameExsistMsg %></p>

            <label for="PS">סיסמה</label><br />
        <div id="input">
            <input type="password" id="PS" name="password" placeholder="הזן סיסמה" />            
            <input type="checkbox" id="CBSP" onclick="passwordVisibility()"/>
        </div>
            <p id="PSM" name="passwordMsg" class="msg"></p>
        
           <input type="submit" id="SSU" name="submitSignUp" value="רישום" onclick="return validateFormSignUp()"/>
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

    var input1 = document.getElementById("UN");
    var input2 = document.getElementById("PS");
    input1.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SSU").click();
        }
    });
    input2.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("SSU").click();
        }
    });
</script>