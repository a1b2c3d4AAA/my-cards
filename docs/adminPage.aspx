<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="WebApplication1.adminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="formValidation.js"></script>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <title>adminPage</title>
</head>
 <body>
<form id="form1" runat="server">
    <ul>
  <li class="Li" id="houseButton"><a href="openPage.aspx" id="home"><img src="בית.png" id="house"/></a></li>
  <li id="hello"><%=hello %></li>
  <li class="Li"><button id="logOut" name="logOutB" class="button">התנתק</button></li>
  <li class="Li"><a href="PersonalInformation.aspx">עדכון פרטים</a></li>
  <li class="Li"><a href="signUp.aspx">רישום</a></li>
  <li class="here Li"><a href="adminPage.aspx">טבלת משתמשים</a></li>
  <li class="Li"><a href="instructions.aspx">הנחיות</a></li>
  <li class="Li"><a href="mainPage.aspx">ערכת הקלפים</a></li>
</ul>

        <div class="form">

       <input type="text" name="changeAdmin" id="CA" placeholder="עדכון רמת הרשאה מנהל"/>
       <input type="text" name="changeEmail" id="CEM" placeholder="עדכון אימייל"/>
       <input type="text" name="changePhone" id="CPN" placeholder="עדכון טלפון"/>
       <input type="date" name="changeBirthday" id="CBD" placeholder="עדכון תאריך לידה"/>
       <input type="text" name="changeLastName" id="CLN" placeholder="עדכון שם משפחה"/>
       <input type="text" name="changeFirstName" id="CFN" placeholder="עדכון שם פרטי"/>
       <input type="password" name="changePassword" id="CPS" placeholder="עדכון סיסמה"/>
       <input type="text" name="changeUserName" id="CUN" placeholder="עדכון שם משתמש"/>
       <input type="submit" name="updateB" id="UB" value="עדכן" onclick="return validateFormUpdate()"/>
       
     <table id="updateMsg">
      <tr>
       <td id="CAM" name="changeAdminMsg" class="msg"></td>
       <td id="CEMM" name="changeEmailMsg" class="msg"></td>
       <td id="CPM" name="changePhoneMsg" class="msg"></td>
       <td id="CBDM" name="changeBirthdayMsg" class="msg"></td>
       <td id="CLNM" name="changeLastNameMsg" class="msg"></td>
       <td id="CFNM" name="changeFirstNameMsg" class="msg"></td>
       <td id="CPSM" name="changePasswordMsg" class="msg"></td>
       <td id="CUNM" name="changeUserNameMsg" class="msg"><%=changeUserNameMsg %></td>
      </tr>
     </table>

       <input type="search" name="filter" id="F" placeholder="חיפוש שמות..."/>
       <input type="submit" name="filterB" id="FB" value="חפש" />
       <input type="submit" name="deleteB" id="DB" value="מחק" />
       <div runat="server" id="tableDiv" ></div>
      
     </div>
    </form>
</body>
</html>

<script>
    var input = document.getElementById("F");
    input.addEventListener("keypress", function(event) {
      if (event.key === "Enter") {
        event.preventDefault();
       document.getElementById("FB").click();
      }
    });

    var input1 = document.getElementById("CUN");
    var input2 = document.getElementById("CPS");
    var input3 = document.getElementById("CFN");
    var input4 = document.getElementById("CLN");
    var input5 = document.getElementById("CBD");
    var input6 = document.getElementById("CPN");
    var input7 = document.getElementById("CEM");
    var input8 = document.getElementById("CA");
    input1.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("UB").click();
        }
    });
    input2.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("UB").click();
        }
    });
    input3.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("UB").click();
        }
    });
    input4.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("UB").click();
        }
    });
    input5.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("UB").click();
        }
    });
    input6.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("UB").click();
        }
    });
    input7.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("UB").click();
        }
    });
    input8.addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("UB").click();
        }
    });
</script>