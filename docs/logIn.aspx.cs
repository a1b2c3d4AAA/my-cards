using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class logIn : System.Web.UI.Page
    {
        public string logInMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submitLogIn"] != null)
            {
                string fileName = "Database.mdf";
                string userTable = "userTable";
                string userName = Request.Form["userName"];
                string password = Request.Form["password"];
                string checkIfUserExsist = "SELECT * FROM " + userTable + " WHERE userName = '" + userName + "' AND password = '" + password + "'";
                string checkIfAdmin = "SELECT * FROM " + userTable + " WHERE userName = '" + userName + "' AND password = '" + password + "' AND admin = '" + true + "'";

                string IsComplete = "SELECT * FROM " + userTable + " WHERE userName = '" + userName + "' AND password = '" + password + "' AND completed = '" + false + "'";

                if (!Helper.IsExist(fileName, checkIfUserExsist))
                {
                    logInMsg = "* שגיאת התחברות";
                    if ((Session["user"] == null || (bool)Session["user"] == false) && (Session["admin"] == null || (bool)Session["admin"] == false))
                    {
                        Session["user"] = false;
                        Session["admin"] = false;
                        Session["completed"] = false;
                        Session["userName"] = "אורח";
                    }
                }
                else if (Helper.IsExist(fileName, checkIfAdmin))
                {
                    string sqlFirstName = "SELECT firstName FROM " + userTable + " WHERE userName = '" + userName + "' AND password = '" + password + "'";
                    string sqlLastName = "SELECT lastName FROM " + userTable + " WHERE userName = '" + userName + "' AND password = '" + password + "'";
                    string firstName, lastName;
                    string connectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\agamm\OneDrive\שולחן העבודה\Cards\WebApplication1\App_Data\Database.mdf; Integrated Security = True; Connect Timeout = 30";

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        using (SqlCommand command = new SqlCommand(sqlFirstName, connection))
                        {
                            connection.Open();
                            firstName = (string)command.ExecuteScalar();
                        }
                    }
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        using (SqlCommand command = new SqlCommand(sqlLastName, connection))
                        {
                            connection.Open();
                            lastName = (string)command.ExecuteScalar();
                        }
                    }
                    Session["user"] = true;
                    Session["admin"] = true;
                    Session["completed"] = true;
                    Session["userName"] = userName;
                    Session["fullName"] = firstName + " " + lastName;
                    Response.Redirect("adminPage.aspx");
                    Response.End();
                }
                else if (Helper.IsExist(fileName, IsComplete))
                {
                    Session["user"] = true;
                    Session["admin"] = false;
                    Session["userName"] = userName;
                    Session["completed"] = false;
                    Response.Redirect("PersonalInformation.aspx");
                    Response.End();
                }
                else
                {
                    string sqlFirstName = "SELECT firstName FROM " + userTable + " WHERE userName = '" + userName + "' AND password = '" + password + "'";
                    string sqlLastName = "SELECT lastName FROM " + userTable + " WHERE userName = '" + userName + "' AND password = '" + password + "'";
                    string firstName, lastName;
                    string connectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\agamm\OneDrive\שולחן העבודה\Cards\WebApplication1\App_Data\Database.mdf; Integrated Security = True; Connect Timeout = 30";

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        using (SqlCommand command = new SqlCommand(sqlFirstName, connection))
                        {
                            connection.Open();
                            firstName = (string)command.ExecuteScalar();
                        }
                    }
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        using (SqlCommand command = new SqlCommand(sqlLastName, connection))
                        {
                            connection.Open();
                            lastName = (string)command.ExecuteScalar();
                        }
                    }
                    Session["user"] = true;
                    Session["admin"] = false;
                    Session["userName"] = userName;
                    Session["fullName"] = firstName + " " + lastName;
                    Session["completed"] = true;
                    Response.Redirect("openPage.aspx");
                    Response.End();
                }
            }
        }
    }
}