<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yellowPage.aspx.cs" Inherits="WebApplication1.yellowPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
    <script src="JavaScriptYellow.js"></script>
    <title>yellowCards</title>
</head>
 <body>
<form id="form1" runat="server">
    <ul id="ulYellow">
  <li class="Li" id="houseButton"><a href="openPage.aspx" id="home"><img src="בית.png" id="house"/></a></li>
  <li id="hello"><%=hello %></li>
  <li class="Li"><button id="logOut" name="logOutB" class="button">התנתק</button></li>
  <li class="Li"><a href="PersonalInformation.aspx">עדכון פרטים</a></li>
      <%=adminButtons %>
  <li class="Li"><a href="instructions.aspx">הנחיות</a></li>
  <li class="Li"><a href="mainPage.aspx">ערכת הקלפים</a></li>
</ul>
        <div class="form">

        <table>
    <tr>
       <td>
            <div id="y-1" onclick="y1()" class="c c-yellow">     
           </div>
        </td>

        <td>
            <div id="y-2" onclick="y2()" class="c c-yellow">
           </div>
        </td>

        <td>
            <div id="y-3" onclick="y3()" class="c c-yellow">
           </div>
       </td>

        <td>
            <div id="y-4" onclick="y4()" class="c c-yellow">       
           </div>
       </td>

        <td>
            <div id="y-5" onclick="y5()" class="c c-yellow">      
           </div>
       </td>
</tr>
    </table>

<table>
    <tr>
                <td>
            <div id="y-6" onclick="y6()" class="c c-yellow">
           </div>
       </td>

                <td>
            <div id="y-7" onclick="y7()" class="c c-yellow">
               <h>מה את/ה מרגיש/ה כשאת/ה נמצא/ת בתוך חברה ולמה?</h> 
           </div>
       </td>

                <td>
            <div id="y-8" onclick="y8()" class="c c-yellow">
               <h>ההורים אומרים לך שעומד להיוולד לך<br />אח או אחות, מה את מרגישה ולמה?</h> 
           </div>
       </td>

                <td>
            <div id="y-9" onclick="y9()" class="c c-yellow">
               <h>מה את/ה מרגיש/ה<br />ביחס ללימודים שלך ולמה?</h> 
           </div>
       </td>

                <td>
                     <div id="y-10" onclick="y10()" class="c c-yellow">
               <h>נכשלת במשימה חשובה/במבחן,<br />מה את/ה מרגיש/ה ולמה?</h> 
           </div>
     </td>
        </tr>
    </table>

<table>
    <tr>
                <td>
            <div id="y-11" onclick="y11()" class="c c-yellow">
               <h>כאשר את/ה צריכ/ה לעשות שינוי בחיים (מעבר לעיר אחרת, מעבר דירה, לעלות<br />כיתה חדשה ועוד), מה את/ה מרגיש/ה?</h> 
           </div>
      </td>

        <td>
            <div id="y-12" onclick="y12()" class="c c-yellow">
               <h>מה את/ה מרגיש/ה<br />בזמן שאחד ההורים מבקש ממך ללכת להתקלח ולמה?</h> 
           </div>
      </td>

                <td>
            <div id="y-13" onclick="y13()" class="c c-yellow">
               <h>שימ/י את עצמך<br />בנעליים של ההורים<br />שלך, מה את/ה מרגיש במצב בו הילד שלך לא ממושמע ומגיב<br />בחוצפה?</h> 
           </div>
      </td>

                <td>
            <div id="y-14" onclick="y14()" class="c c-yellow">
               <h>מה את מרגיש/ה כאשר מישהו צוחק או מלגלג<br />על אמרה שאמרת או מעשה שעשית ולמה?</h> 
           </div>
      </td>

                <td>
            <div id="y-15" onclick="y15()" class="c c-yellow">
               <h>את/ה צריכ/ה להנהיג קבוצה של תלמידים,<br />מה את/ה מרגישה<br />בנוגע לכך ולמה?</h> 
           </div>
     </td>
   </tr>
    </table>

        <table>
    <tr>
                <td>
            <div id="y-16" onclick="y16()" class="c c-yellow">
               <h>מה את/ה מרגיש/ה כשפולשים לך לפרטיות ולמה?</h> 
           </div>
      </td>

                <td>
            <div id="y-17" onclick="y17()" class="c c-yellow">
               <h>מה את/ה מרגיש/ה בזמנים בהם מתייחסים אליך או מחשיבים אותך לילד/ה קטנה ולמה?</h> 
           </div>
       </td>

                <td>
            <div id="y-18" onclick="y18()" class="c c-yellow">
               <h>מה את/ה מרגיש/ה<br />בזמן שמישהו משבח אותך על מעשה<br />שעשית, גם אם לא הצלחת בו ולמה?</h> 
           </div>
       </td>

                <td>
            <div id="y-19" onclick="y19()" class="c c-yellow">
               <h>מה את/ה מרגישה<br />כאשר התפקידים בבית לא מתחלקים שווה<br />בשווה ולמה?</h> 
           </div>
      </td>

                <td>
            <div id="y-20" onclick="y20()" class="c c-yellow">
               <h>מה תרגיש/י אם<br />יתערבו לך יותר מדי<br />במה שאת עושה<br />ויחליטו עבורך ולמה?</h> 
           </div>
       </td>
    </tr>
    </table> 
             </div>
<%--<table>
    <tr>
       <td><button class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1>ttttttt</h1> 
           </div>

            <div class="back back-yellow">
               <h>מישהו אהוב צועק<br />עליך, מה אתה מרגיש? איך את/ה יכול/ה<br />להרגיש אחרת ולמה?</h> 
           </div>
        </div>
     </button></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה תרגיש/י אם<br />תשמע/י לעיתים<br />קרובות את המילה לא בבית ולמה?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>כאשר הדעה של חברך חולקת על הדעה שלך, מה את/ה מרגיש/ה ולמה?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>כשאת/ה לא מקבל/ת מההורים שלך משהו שאתה מאוד רוצה, מה את/ה מרגיש/ה?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>כשההורים שלך רבים לידך לעיתים קרובות,<br />מה את/ה מרגיש/ה?</h> 
           </div>
        </div>
     </div></td>
</tr>
    </table>

<table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>
            <div class="back back-yellow">
               <h>מה את/ה מרגיש/ה<br />כשכל אחד מההורים פועל בגירסה שונה ואין אחדות ביניהם ולמה? </h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה את/ה מרגיש/ה כשאת/ה נמצא/ת בתוך חברה ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>ההורים אומרים לך שעומד להיוולד לך<br />אח או אחות, מה את מרגישה ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה את/ה מרגיש/ה<br />ביחס ללימודים שלך ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>נכשלת במשימה חשובה/במבחן,<br />מה את/ה מרגיש/ה ולמה?</h> 
           </div>
        </div>
     </div></td>
        </tr>
    </table>

<table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>כאשר את/ה צריכ/ה לעשות שינוי בחיים (מעבר לעיר אחרת, מעבר דירה, לעלות<br />כיתה חדשה ועוד), מה את/ה מרגיש/ה?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה את/ה מרגיש/ה<br />בזמן שאחד ההורים מבקש ממך ללכת להתקלח ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>שימ/י את עצמך<br />בנעליים של ההורים<br />שלך, מה את/ה מרגיש במצב בו הילד שלך לא ממושמע ומגיב<br />בחוצפה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה את מרגיש/ה כאשר מישהו צוחק או מלגלג<br />על אמרה שאמרת או מעשה שעשית ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>את/ה צריכ/ה להנהיג קבוצה של תלמידים,<br />מה את/ה מרגישה<br />בנוגע לכך ולמה?</h> 
           </div>
        </div>
     </div></td>
   </tr>
    </table>

        <table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה את/ה מרגיש/ה כשפולשים לך לפרטיות ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה את/ה מרגיש/ה בזמנים בהם מתייחסים אליך או מחשיבים אותך לילד/ה קטנה ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה את/ה מרגיש/ה<br />בזמן שמישהו משבח אותך על מעשה<br />שעשית, גם אם לא הצלחת בו ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה את/ה מרגישה<br />כאשר התפקידים בבית לא מתחלקים שווה<br />בשווה ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-yellow">
               <h1></h1> 
           </div>

            <div class="back back-yellow">
               <h>מה תרגיש/י אם<br />יתערבו לך יותר מדי<br />במה שאת עושה<br />ויחליטו עבורך ולמה?</h> 
           </div>
        </div>
     </div></td>
    </tr>
    </table> --%>   
    </form>
</body>
</html>