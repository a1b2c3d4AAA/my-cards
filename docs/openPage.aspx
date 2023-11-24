<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="openPage.aspx.cs" Inherits="WebApplication1.openPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet2.css" rel="stylesheet" />
    <title>openPage</title>
</head>
 <body>
<form id="form1" runat="server">
    <ul>
  <li class="here Li" id="houseButton"><a href="openPage.aspx" id="home"><img src="בית.png" id="house"/></a></li>
  <li id="hello"><%=hello %></li>
  <li class="Li"><button id="logOut" name="logOutB" class="button">התנתק</button></li>
  <li class="Li"><a href="PersonalInformation.aspx">עדכון פרטים</a></li>
     <%=adminButtons %>
  <li class="Li"><a href="instructions.aspx">הנחיות</a></li>
  <li class="Li"><a href="mainPage.aspx">ערכת הקלפים</a></li>
</ul>

        <div class="form">
            <h1 style="color: #011ec4">קלפי מעגל החוויה: מסע לשיפור רגשי, מחשבתי והתנהגותי<div id="h2">מחשבות * רגשות * התנהגות</div></h1>
               <p style="font-size: 24px; text-align: center;">
פתח עולם של חקר עצמי באמצעות קלפי מעגל החוויה. קלפים ייחודיים אלה הם כלי עוצמתי שיכול לעזור לך לצלול עמוק לתוך הנפש שלך, ולחשוף מחשבות, רגשות והתנהגויות נסתרים שעוצבו לאורך חייך.
                <br /> <br />
דמיין את עצמך כקנבס, שצויר לאורך זמן על ידי חוויות חיים שונות. ייתכן שחלק מהחוויות הללו לא משרתות אותך היטב, וגורמות לשינויים ברגשות, בדפוסי החשיבה ובהתנהגויות שלך. פירוק השכבות הללו יכול להיות לעתים קרובות מאתגר, במיוחד כאשר מילים נכשלות להעביר את הרגשות העמוקים ביותר שלנו.
                 <br /> <br />
כאן נכנסים לתמונה קלפי מעגל החוויה. חפיסה זו אינה רק סט של קלפים, אלא מסע - מסע אל עבר גילוי עצמי. על ידי התחברות לקלפים הללו, אתה מתחבר לעצמך, ופותח אוצר של סיפורים לא מסופרים, רגשות מודחקים והתנהגויות לא נחקרות.
                 <br /> <br />
בזמן שאתה מתקשר עם קלפים אלה, תגלה שהם מתקשרים איתך בשפה שמעבר למילים.
                <br /> <br />
                בחפיסה 60 קלפים שונים המתאימים לשימוש בשיטות טיפול שונות עם ילדים ובני נוער.
                    </p>
        </div>
    </form>
</body>
</html>
