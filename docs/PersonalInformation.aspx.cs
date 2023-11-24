using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class PersonalInformation : System.Web.UI.Page
    {
        public string hello, adminButtons, menuForUser, menuForUserCards, menuForUserHome, information, message;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null || (bool)Session["user"] != true)
            {
                Response.Redirect("logIn.aspx");
                Response.End();
            }
            else
            {
                if (Session["completed"] == null || (bool)Session["completed"] != true)
                    information = "<input type='submit' id='SPI' name='submitPI' value='סיום' onclick='return validateFormPI()'/>";
                else
                    information = "<input type='submit' id='SPI' name='submitPI' value='סיום' onclick='return validateFormPIUpdate()'/>";


                if (Request.Form["logOutB"] != null)
                {
                    Session.Abandon();
                    Response.Redirect("logIn.aspx");
                    Response.End();
                }
                if (Session["user"] != null && (bool)Session["user"] == true && Session["completed"] != null && (bool)Session["completed"] == true)
                {
                    menuForUserHome = "<li class='Li' id='houseButton'><a href='openPage.aspx' id='home'><img src='בית.png' id='house'/></a></li>";
                    hello = "שלום, " + Session["fullName"];
                    menuForUser = "<li class='Li'><button id='logOut' name='logOutB' class='button'>התנתק</button></li>";
                    menuForUser += "<li class='here Li'><a href='PersonalInformation.aspx'>עדכון פרטים</a></li>";
                    menuForUserCards = "<li class='Li'><a href='instructions.aspx'>הנחיות</a></li>";
                    menuForUserCards += "<li class='Li'><a href='mainPage.aspx'>ערכת הקלפים</a></li>";
                }
                if (Session["admin"] != null && (bool)Session["admin"] == true)
                {
                    hello = "שלום מנהל, " + Session["fullName"];
                    adminButtons = "<li class='Li'><a href='signUp.aspx'>רישום</a></li>" + "<li class='Li'><a href='adminPage.aspx'>טבלת משתמשים</a></li>";
                }

                if (Request.Form["submitPI"] != null)
                {
                    string fileName = "Database.mdf";
                    string userTable = "userTable";
                    string password = Request.Form["password"];
                    string firstName = Request.Form["firstName"];
                    string lastName = Request.Form["lastName"];
                    string birthday = Request.Form["birthday"];
                    string phone = Request.Form["phone"];
                    string email = Request.Form["email"];

                    if (password != "")
                    {
                        string sqlPS = "UPDATE userTable SET password = '" + password + "' WHERE userName = '" + Session["userName"] + "'";
                        Helper.DoQuery(fileName, sqlPS);
                    }
                    if (firstName != "")
                    {
                        string sqlFN = "UPDATE userTable SET firstName = '" + firstName + "' WHERE userName = '" + Session["userName"] + "'";
                        Helper.DoQuery(fileName, sqlFN);
                    }
                    if (lastName != "")
                    {
                        string sqlLN = "UPDATE userTable SET lastName = '" + lastName + "' WHERE userName = '" + Session["userName"] + "'";
                        Helper.DoQuery(fileName, sqlLN);
                    }
                    if (birthday != "")
                    {
                        string sqlBD = "UPDATE userTable SET birthday = '" + birthday + "' WHERE userName = '" + Session["userName"] + "'";
                        Helper.DoQuery(fileName, sqlBD);
                    }
                    if (phone != "")
                    {
                        string sqlP = "UPDATE userTable SET phone = '" + phone + "' WHERE userName = '" + Session["userName"] + "'";
                        Helper.DoQuery(fileName, sqlP);
                    }
                    if (email != "")
                    {
                        string sqlEM = "UPDATE userTable SET email = '" + email + "' WHERE userName = '" + Session["userName"] + "'";
                        Helper.DoQuery(fileName, sqlEM);
                    }

                    string sqlComp = "UPDATE userTable SET completed = '" + true + "' WHERE userName = '" + Session["userName"] + "'";
                    Helper.DoQuery(fileName, sqlComp);

                    string sqlFirstName = "SELECT firstName FROM " + userTable + " WHERE userName = '" + Session["userName"] + "'";
                    string sqlLastName = "SELECT lastName FROM " + userTable + " WHERE userName = '" + Session["userName"] + "'";
                    string firstNamec, lastNamec;
                    string connectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\agamm\OneDrive\שולחן העבודה\Cards\WebApplication1\App_Data\Database.mdf; Integrated Security = True; Connect Timeout = 30";

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        using (SqlCommand command = new SqlCommand(sqlFirstName, connection))
                        {
                            connection.Open();
                            firstNamec = (string)command.ExecuteScalar();
                        }
                    }
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        using (SqlCommand command = new SqlCommand(sqlLastName, connection))
                        {
                            connection.Open();
                            lastNamec = (string)command.ExecuteScalar();
                        }
                    }

                    if (firstName != "" && lastName != "")
                    {
                        Session["fullName"] = firstName + " " + lastName;
                    }
                    else if (firstName != "" && lastName == "")
                    {
                        Session["fullName"] = firstName + " " + lastNamec;
                    }
                    else if (firstName == "" && lastName != "")
                    {
                        Session["fullName"] = firstNamec + " " + lastName;
                    }
                    if (Session["completed"] == null || (bool)Session["completed"] != true)
                    {
                        Session["admin"] = false;
                        Session["user"] = true;
                        Session["completed"] = true;
                        Response.Redirect("openPage.aspx");
                        Response.End();
                    }
                    else
                    {
                        Session["user"] = true;
                        Session["completed"] = true;
                        message = "<p style='color: #FF8F8F; font-size: 20px; font-weight: bold; padding-right: 21px;'>הפרטים שלך עודכנו בהצלחה!</p>";
                    }
                }
            }
        }
    }
}