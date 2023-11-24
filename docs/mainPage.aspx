<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPage.aspx.cs" Inherits="WebApplication1.mainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
    <title>mainPage</title>
</head>
 <body>
<form id="form1" runat="server">
<ul>
  <li class="Li" id="houseButton"><a href="openPage.aspx" id="home"><img src="בית.png" id="house"/></a></li>
  <li id="hello"><%=hello %></li>
  <li class="Li"><button id="logOut" name="logOutB" class="button">התנתק</button></li>
  <li class="Li"><a href="PersonalInformation.aspx">עדכון פרטים</a></li>
      <%=adminButtons %>
  <li class="Li"><a href="instructions.aspx">הנחיות</a></li>
  <li class="here Li"><a href="mainPage.aspx">ערכת הקלפים</a></li>
</ul>

        <div class="form">


<h1 style="padding-right: 150px;">ערכת הקלפים</h1>

<tabe id="buttonsTable">
 <tr>
  <td><button id="card-red" class="cardB" name="red" style="margin-right: 190px; width: 255px; height: 390px; margin-top: 110px;"></button></td>
  <td><button id="card-yellow" class="cardB" name="yellow" style="margin-right: 190px; width: 255px; height: 390px; margin-top: 110px;"></button></td>
  <td><button id="card-blue" class="cardB" name="blue" style="margin-right: 190px; width: 255px; height: 390px; margin-top: 110px;"></button></td>
 </tr>
</tabe>
             </div>
    </form>
</body>
</html>
