<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="greenPage.aspx.cs" Inherits="WebApplication1.greenPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
    <title>greenCards</title>
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
  <li class="Li"><a href="mainPage.aspx">ערכת הקלפים</a></li>
</ul>



<table>
    <tr>
       <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-green">
               <h1>שאלה</h1> 
           </div>

            <div class="back back-green">
               <h>שאלההההה?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-green">
               <h1>שאלה</h1> 
           </div>

            <div class="back back-green">
               <h>שאלההההה?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-green">
               <h1>שאלה</h1> 
           </div>

            <div class="back back-green">
               <h>שאלההההה?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-green">
               <h1>שאלה</h1> 
           </div>

            <div class="back back-green">
               <h>שאלההההה?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-green">
               <h1>שאלה</h1> 
           </div>

            <div class="back back-green">
               <h>שאלההההה?</h> 
           </div>
        </div>
     </div></td>
  </tr>
</table>
    </form>
</body>
</html>
