using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class azurePage : System.Web.UI.Page
    {
        public string hello, adminButtons;
        protected void Page_Load(object sender, EventArgs e)
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
                if (Request.Form["logOutB"] != null)
                {
                    Session.Abandon();
                    Response.Redirect("logIn.aspx");
                    Response.End();
                }
                hello = "שלום, " + Session["fullName"];

                if (Session["admin"] != null && (bool)Session["admin"] == true)
                {
                    hello = "שלום מנהל, " + Session["fullName"];
                    adminButtons = "<li class='Li'><a href='signUp.aspx'>רישום</a></li>" + "<li class='Li'><a href='adminPage.aspx'>טבלת משתמשים</a></li>";
                }
            }
        }
    }
}