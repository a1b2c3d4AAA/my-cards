using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;
using System.Data.SqlClient;
using System.Web.Services.Description;

namespace WebApplication1
{
    public partial class adminPage : System.Web.UI.Page
    {
        public string hello, changeUserNameMsg;
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

                string fileName = "Database.mdf";
                string sqlSelect = "SELECT * FROM userTable";
                DataTable dt = Helper.ExecuteDataTable(fileName, sqlSelect);
                string table = BuildUserTable(dt);
                tableDiv.InnerHtml = table;
                if (Request.Form["filterB"] != null)
                {
                    string filter = Request.Form["filter"];
                    string filterSelect = $"SELECT * FROM userTable " + $" WHERE userName LIKE '%{filter}%' OR password LIKE N'%{filter}%' OR firstName LIKE N'%{filter}%' OR lastName LIKE N'%{filter}%' OR phone LIKE N'%{filter}%' OR email LIKE N'%{filter}%'";
                    DataTable dtFilter = Helper.ExecuteDataTable(fileName, filterSelect);
                    string filterTable = BuildUserTable(dtFilter);
                    tableDiv.InnerHtml = filterTable;
                }
            }
        }
        public string BuildUserTable(DataTable dt)
        {
            string str = "<table id='table'>";
            str += "<tr id='headerRow'>";
            str += "<td></td>";
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + column.ColumnName + "</td>";
            }
            str += "</tr>";
            foreach (DataRow row in dt.Rows)
            {
                int count = 0;
                if (Delete(row["id"].ToString()))
                {
                    str += "<tr>";
                    str += "<td class='checkBoxTD'>" + CreateCheckBox(row["id"].ToString()) + "</td>";
                    foreach (DataColumn column in dt.Columns)
                    {
                        count++;
                        if (Update(row["id"].ToString(), count) == 2)
                        {
                            string changeUserName = Request.Form["changeUserName"];
                            str += "<td>" + changeUserName + "</td>";
                        }
                        else if (Update(row["id"].ToString(), count) == 3)
                        {
                            string changePassword = Request.Form["changePassword"];
                            str += "<td>" + changePassword + "</td>";
                        }
                        else if (Update(row["id"].ToString(), count) == 4)
                        {
                            string changeFirstName = Request.Form["changeFirstName"];
                            str += "<td>" + changeFirstName + "</td>";
                        }
                        else if (Update(row["id"].ToString(), count) == 5)
                        {
                            string changeLastName = Request.Form["changeLastName"];
                            str += "<td>" + changeLastName + "</td>";
                        }
                        else if (Update(row["id"].ToString(), count) == 6)
                        {
                            string changeBirthday = Request.Form["changeBirthday"];
                            str += "<td>" + changeBirthday + "</td>";
                        }
                        else if (Update(row["id"].ToString(), count) == 7)
                        {
                            string changePhone = Request.Form["changePhone"];
                            str += "<td>" + changePhone + "</td>";
                        }
                        else if (Update(row["id"].ToString(), count) == 8)
                        {
                            string changeEmail = Request.Form["changeEmail"];
                            str += "<td>" + changeEmail + "</td>";
                        }
                        else if (Update(row["id"].ToString(), count) == 9)
                        {
                            string changeAdmin = Request.Form["changeAdmin"];
                            str += "<td>" + changeAdmin + "</td>";
                        }
                        else
                        {
                            str += "<td>" + row[column] + "</td>";
                        }
                    }
                    str += "</tr>";
                }
            }
            str += "</table>";
            return str;
        }
        public string CreateCheckBox(string id)
        {
            return $"<input type='checkbox' name='chk{id}' id='chk{id}'/>";
        }
        public bool Delete(string id)
        {
            if (Request.Form["deleteB"] != null && Request.Form[$"chk{id}"] != null)
            {
                string fileName = "Database.mdf";
                string sqlDelete = "delete from userTable WHERE id = '" + id + "'";
                Helper.DoQuery(fileName, sqlDelete);
                return false;
            }
            return true;
        }
        public int Update(string id, int count)
        {
            string fileName = "Database.mdf";
            string userTable = "userTable";
            string changeUserName = Request.Form["changeUserName"];
            string changePassword = Request.Form["changePassword"];
            string changeFirstName = Request.Form["changeFirstName"];
            string changeLastName = Request.Form["changeLastName"];
            string changeBirthday = Request.Form["changeBirthday"];
            string changePhone = Request.Form["changePhone"];
            string changeEmail = Request.Form["changeEmail"];
            string changeAdmin = Request.Form["changeAdmin"];

            if (Request.Form["updateB"] != null && Request.Form[$"chk{id}"] != null)
            {
                if (changeUserName != "" && count == 2)
                {
                    string checkIfUserExsist = "SELECT * FROM " + userTable + " WHERE userName = '" + changeUserName + "'";
                    if (Helper.IsExist(fileName, checkIfUserExsist))
                    {
                        changeUserNameMsg = "* שם המשתמש הזה תפוס";
                    }
                    else
                    {
                        string sqlUpdate = "UPDATE userTable SET userName = '" + changeUserName + "' WHERE id = '" + id + "'";
                        Helper.DoQuery(fileName, sqlUpdate);
                        return 2;
                    }
                }
                if (changePassword != "" && count == 3)
                {
                    string sqlUpdate = "UPDATE userTable SET password = '" + changePassword + "' WHERE id = '" + id + "'";
                    Helper.DoQuery(fileName, sqlUpdate);
                    return 3;
                }
                if (changeFirstName != "" && count == 4)
                {
                    string sqlUpdate = "UPDATE userTable SET firstName = N'" + changeFirstName + "' WHERE id = '" + id + "'";
                    Helper.DoQuery(fileName, sqlUpdate);
                    return 4;
                }
                if (changeLastName != "" && count == 5)
                {
                    string sqlUpdate = "UPDATE userTable SET lastName = N'" + changeLastName + "' WHERE id = '" + id + "'";
                    Helper.DoQuery(fileName, sqlUpdate);
                    return 5;
                }
                if (changeBirthday != "" && count == 6)
                {
                    string sqlUpdate = "UPDATE userTable SET birthday = '" + changeBirthday + "' WHERE id = '" + id + "'";
                    Helper.DoQuery(fileName, sqlUpdate);
                    return 6;
                }
                if (changePhone != "" && count == 7)
                {
                    string sqlUpdate = "UPDATE userTable SET phone = '" + changePhone + "' WHERE id = '" + id + "'";
                    Helper.DoQuery(fileName, sqlUpdate);
                    return 7;
                }
                if (changeEmail != "" && count == 8)
                {
                    string sqlUpdate = "UPDATE userTable SET email = '" + changeEmail + "' WHERE id = '" + id + "'";
                    Helper.DoQuery(fileName, sqlUpdate);
                    return 8;
                }
                if (changeAdmin != "" && count == 9)
                {
                    string sqlUpdate = "UPDATE userTable SET admin = '" + changeAdmin + "' WHERE id = '" + id + "'";
                    Helper.DoQuery(fileName, sqlUpdate);
                    return 9;
                }
            }
            return -1;
        }
    }
}