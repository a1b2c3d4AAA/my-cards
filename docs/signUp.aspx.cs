using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class signUp : System.Web.UI.Page
    {
        public string hello, userNameExsistMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null || (bool)Session["admin"] != true)
            {
                if (Session["user"] == null || (bool)Session["user"] != true)
                {
                    Response.Redirect("logIn.aspx");
                    Response.End();
                }
                else if (Session["completed"] == null || (bool)Session["completed"] != true)
                {
                    Response.Redirect("PersonalInformation.aspx");
                    Response.End();
                }
                else
                {
                    Response.Redirect("openPage.aspx");
                    Response.End();
                }
            }
            else
            {
                if (Request.Form["logOutB"] != null)
                {
                    Session.Abandon();
                    Response.Redirect("logIn.aspx");
                    Response.End();
                }
                hello = "שלום מנהל, " + Session["fullName"];

                if (Request.Form["submitSignUp"] != null)
                {
                    string fileName = "Database.mdf";
                    string userTable = "userTable";

                    string userName = Request.Form["userName"];
                    string password = Request.Form["password"];
                    string firstName = null;
                    string lastName = null;
                    string birthday = null;
                    string phone = null;
                    string email = null;

                    string checkIfUserExsist = "SELECT * FROM " + userTable + " WHERE userName = '" + userName + "'";

                    if (Helper.IsExist(fileName, checkIfUserExsist))
                    {
                        userNameExsistMsg = "* שם המשתמש הזה תפוס. נסה שם אחר";
                    }
                    else
                    {
                        string sqlInsert = "insert into userTable(userName,password,completed)" + " values(N'" + userName + "' , N'" + password + "' , '" + false + "')";
                        Helper.DoQuery(fileName, sqlInsert);
                        Session["user"] = true;
                        Session["admin"] = false;
                        Session["userName"] = userName;
                        Session["completed"] = false;
                        Session.Abandon();
                        Response.Redirect("logIn.aspx");
                        Response.End();
                    }
                }
            }
        }
    }
}