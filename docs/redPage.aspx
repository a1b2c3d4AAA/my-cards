<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="redPage.aspx.cs" Inherits="WebApplication1.redPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
    <script src="JavaScriptRed.js"></script>
    <title>redCards</title>
</head>
 <body>
<form id="form1" runat="server">
    <ul id="ulRed">
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
            <div id="r-1" onclick="r1()" class="c c-red">     
           </div>
        </td>

        <td>
            <div id="r-2" onclick="r2()" class="c c-red">
           </div>
        </td>

        <td>
            <div id="r-3" onclick="r3()" class="c c-red">
           </div>
       </td>

        <td>
            <div id="r-4" onclick="r4()" class="c c-red">       
           </div>
       </td>

        <td>
            <div id="r-5" onclick="r5()" class="c c-red">      
           </div>
       </td>
</tr>
    </table>

<table>
    <tr>
                <td>
            <div id="r-6" onclick="r6()" class="c c-red">
           </div>
       </td>

                <td>
            <div id="r-7" onclick="r7()" class="c c-red">
           </div>
       </td>

                <td>
            <div id="r-8" onclick="r8()" class="c c-red">
           </div>
       </td>

                <td>
            <div id="r-9" onclick="r9()" class="c c-red">
           </div>
       </td>

                <td>
                     <div id="r-10" onclick="r10()" class="c c-red">
           </div>
     </td>
        </tr>
    </table>

<table>
    <tr>
                <td>
            <div id="r-11" onclick="r11()" class="c c-red">
           </div>
      </td>

        <td>
            <div id="r-12" onclick="r12()" class="c c-red">
           </div>
      </td>

                <td>
            <div id="r-13" onclick="r13()" class="c c-red">
           </div>
      </td>

                <td>
            <div id="r-14" onclick="r14()" class="c c-red">
           </div>
      </td>

                <td>
            <div id="r-15" onclick="r15()" class="c c-red">
           </div>
     </td>
   </tr>
    </table>

        <table>
    <tr>
                <td>
            <div id="r-16" onclick="r16()" class="c c-red">
           </div>
      </td>

                <td>
            <div id="r-17" onclick="r17()" class="c c-red">
           </div>
       </td>

                <td>
            <div id="r-18" onclick="r18()" class="c c-red">
           </div>
       </td>

                <td>
            <div id="r-19" onclick="r19()" class="c c-red">
           </div>
      </td>

                <td>
            <div id="r-20" onclick="r20()" class="c c-red">
           </div>
       </td>
    </tr>
    </table>   
             </div>
<%--<table>
    <tr>
       <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>מה את/ה צריכ/ה מההורים שלך שאת/ה מרגיש/ה שחסר לך?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>ספר/י על פעולה<br />שקשה לך להתמיד בה ומה גורם לכך?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>באילו מצבים את/ה זקוק/ה שיראו ויבינו אותך?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>מהם הכוחות שאת/ה חושב שחסרים לך, שיכולים לעזור לך<br />בפתרון בעיות/קשיים?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>מיהי הדמות האהובה עליך שאתה רוצה<br /> שתהיה לך מודל לחיקוי ולמה?</h> 
           </div>
        </div>
     </div></td>
</tr>
    </table>

<table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>
            <div class="back back-red">
               <h>מהם שלושת הדברים שאת/ה רוצה שישימו<br />לב אליהם אצלך ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>האם יש משהו שאת/ה מפחד/ת מפניו? אם כן, מה את/ה חושב/ת שאת/ה יכול/ה לעשות<br />כדי להירגע?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>מה לדעתך חשוב שההורים יציבו גבולות בבית ולמה את/ה חושב/ת כך?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>אם יש לחבר שלך קושי ביצירת סדר יום<br />מבחינת מקלחות, ארוחות, הכנת שיעורים ועוד, מה את/ה יכול<br />לייעץ לו לפתרון<br />הבעיה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>את/ה מגיע/ה לארוע מרגש עבורך, מה יכול לעזור לך כדי להרגיש רגוע/ה ובטוח/ה?</h> 
           </div>
        </div>
     </div></td>
        </tr>
    </table>

<table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>מהו עבורך זמן איפוס ובאילו מצבים אתה<br />זקוק לו?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>האם אתה מגדיר את עצמך כאדם אחראי?<br />אם לא, למה לא? אם<br />כן, איך זה בא לידי ביטוי?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>הצגת בפני הורייך<br />יצירה שעשית ושאת/ה מאוד אוהב, איך הם הגיבו ומה הרגשת<br />באותו רגע?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>מהם התחביבים שלך שיכולים לעזור לך להרגיש רגוע ושלו?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>כשאת/ה מסתכל/ת במראה, מה את/ה חושב/ת?</h> 
           </div>
        </div>
     </div></td>
   </tr>
    </table>

        <table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>אם יש לך אחים, איך את/ה מגדיר/ה את<br />הקשר שלך איתם<br />ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>איך את/ה רואה את מקומך בבית ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>איך את/ה רואה את<br />היחס של ההורים<br />כלפיך ביחס לאחים<br />שלך ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>באילו תחומים את/ה מרגיש/ה שיש לך<br />קשיים להתמודד איתם (משפחה, חברים,<br />בריאות ועוד) ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-red">
               <h1></h1> 
           </div>

            <div class="back back-red">
               <h>נכשלת במשימה חשובה/במבחן, מה לדעתך ההורים ירגישו ולמה?</h> 
           </div>
        </div>
     </div></td>
    </tr>
    </table>     --%>
    </form>
</body>
</html>
