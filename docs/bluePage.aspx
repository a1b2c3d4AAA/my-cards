<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bluePage.aspx.cs" Inherits="WebApplication1.bluePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
    <script src="JavaScriptBlue.js"></script>
    <title>blueCards</title>
</head>
 <body>
<form id="form1" runat="server">
    <ul id="ulBlue">
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
            <div id="b-1" onclick="b1()" class="c c-blue">     
           </div>
        </td>

        <td>
            <div id="b-2" onclick="b2()" class="c c-blue">
           </div>
        </td>

        <td>
            <div id="b-3" onclick="b3()" class="c c-blue">
           </div>
       </td>

        <td>
            <div id="b-4" onclick="b4()" class="c c-blue">       
           </div>
       </td>

        <td>
            <div id="b-5" onclick="b5()" class="c c-blue">      
           </div>
       </td>
</tr>
    </table>

<table>
    <tr>
                <td>
            <div id="b-6" onclick="b6()" class="c c-blue">
           </div>
       </td>

                <td>
            <div id="b-7" onclick="b7()" class="c c-blue">
           </div>
       </td>

                <td>
            <div id="b-8" onclick="b8()" class="c c-blue">
           </div>
       </td>

                <td>
            <div id="b-9" onclick="b9()" class="c c-blue">
           </div>
       </td>

                <td>
                     <div id="b-10" onclick="b10()" class="c c-blue">
           </div>
     </td>
        </tr>
    </table>

<table>
    <tr>
                <td>
            <div id="b-11" onclick="b11()" class="c c-blue">
           </div>
      </td>

        <td>
            <div id="b-12" onclick="b12()" class="c c-blue">
           </div>
      </td>

                <td>
            <div id="b-13" onclick="b13()" class="c c-blue">
           </div>
      </td>

                <td>
            <div id="b-14" onclick="b14()" class="c c-blue">
           </div>
      </td>

                <td>
            <div id="b-15" onclick="b15()" class="c c-blue">
           </div>
     </td>
   </tr>
    </table>

        <table>
    <tr>
                <td>
            <div id="b-16" onclick="b16()" class="c c-blue">
           </div>
      </td>

                <td>
            <div id="b-17" onclick="b17()" class="c c-blue">
           </div>
       </td>

                <td>
            <div id="b-18" onclick="b18()" class="c c-blue">
           </div>
       </td>

                <td>
            <div id="b-19" onclick="b19()" class="c c-blue">
           </div>
      </td>

                <td>
            <div id="b-20" onclick="b20()" class="c c-blue">
           </div>
       </td>
    </tr>
    </table>   
             </div>
<%--<table>
    <tr>
       <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>ספר/י על מעשה טוב שעשית לאחרונה שנתן לך סיפוק ושמחה ואיך פעלת?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>את/ה צריכ/ה להנהיג קבוצה, אילו כוחות קיימים בך בהם תשתמש/י כדי להצליח ולמה? ואילו כוחות את חושבת שחסרים לך בפעולה זו?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>איך את/ה פועל/ת במצבים של קושי כדי להגיע להצלחה<br />ולפתרון?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>ספר/י על פעולה/<br />משימה שהיה לך קושי לבצעה בעבר ועכשיו הצלחת ומה גרם לך עכשיו להצליח?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>האם את/ה מגדיר/ה<br />את עצמך כמישהו/י עצמאי/ת? במה זה מתבטא?</h> 
           </div>
        </div>
     </div></td>
</tr>
    </table>

<table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>
            <div class="back back-blue">
               <h>מישהו אהוב צעק<br />עליך, איך הגבת? איך יכולת לפעול אחרת ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>ספר/י על מקרה בו לא עמדת בהסכם שעשית עם סמכות שחשובה לך (הורים/מורה/מישהו<br />קרוב אחר), והפסדת במקום להרוויח. איך הגבת באותו רגע?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>על מה בדרך כלל<br />את/ה רב/ה עם אחים/חברים שלך?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>ספר/י על אירוע<br />שפעלת בו באופן שהפתיע אותך ומדוע הופתעת?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>איך את/ה מגיב/ה כשאת/ה לא מקבל מההורים שלך משהו שחיכית לו זמן רב?</h> 
           </div>
        </div>
     </div></td>
        </tr>
    </table>

<table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>ספר/י לי על זמן<br />האיכות שלך עם<br />ההורים, לאן אתם<br />הולכים ומה אתם<br />עושים?</h> 
           </div>
        </div>
     </div></td>

        <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>ספר/י על מקרה שעשה מישהו שאת/ה אוהב/ת שלא ציפית לכך ומה הפתיע אותך בו?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>האם קרה שהבטחת<br />פעם הבטחה ולא<br />קיימת? מה גרם לך לא לקיים?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>כאשר הדעה של חברך חולקת על הדעה שלך, איך את/ה מגיב/ה<br />ומדוע?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>אם אח/חבר טוב שלך היה מספר לך סוד<br />חשוב שאת/ה יודע/ת שיכול לפגוע בו, איך<br />היית מגיב/ה ופועל/ת?</h> 
           </div>
        </div>
     </div></td>
   </tr>
    </table>

        <table>
    <tr>
                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>ספר/י על מעשה<br />שעשית שהתאכזבת<br />ממנו ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>ספר/י על מעשה<br />שמישהו אהוב עשה שמאוד הפחיד אותך.</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>איך את/ה פועל/ת<br />כשכל אחד מההורים פועל בגירסה שונה ואין אחדות ביניהם ולמה? </h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>איך את/ה מגיב/ה כשפולשים לך<br />לפרטיות? ואיך את/ה יכול/ה להגיב אחרת ולמה?</h> 
           </div>
        </div>
     </div></td>

                <td><div class="card"> 
         <div class="card-inner">
            <div class="front front-blue">
               <h1></h1> 
           </div>

            <div class="back back-blue">
               <h>איך תגיב/י כאשר אחד החברים שלך לא ירצו לשתף אותך במשחק/ בשיחה ולמה?</h> 
           </div>
        </div>
     </div></td>
    </tr>
    </table>--%>
    </form>
</body>
</html>
