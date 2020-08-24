using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace OnlineReservation.Web.DataLayer
{
    public class BaseControl : System.Web.UI.UserControl
    {
        public SqlConnection DBCONNECTION
        {
            get
            {
                return new SqlConnection(ConfigurationManager.ConnectionStrings["DBCONNECTION"].ConnectionString);
            }
        }
        public MEMBER CURRENTMEMBER//to:Do  Burayı sor unutma
        {
            get
            {
                if (Session["CURRENTMEMBER"] == null)
                {
                    Session["CURRENTMEMBER"] = new MEMBER();
                }
                return Session["CURRENTMEMBER"] as MEMBER;
            }
            set
            {
                Session["CURRENTMEMBER"] = value;
            }
        }
        public bool IsUser
        {
            get
            {
                return CURRENTMEMBER.TYPEMEMBERID == 1;
            }
        }

        public bool IsDepartmentEmployee
        {
            get
            {
                return CURRENTMEMBER.TYPEMEMBERID == 2;
            }
        }
        public bool IsFirmResponsible
        {
            get
            {
                return CURRENTMEMBER.TYPEMEMBERID == 3;
            }
        }

        public bool IsAdmin
        {
            get
            {
                return CURRENTMEMBER.TYPEMEMBERID == 4;
            }
        }
        

        public Boolean MEMBERMAIL(string mail)
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(mail);
            if (match.Success)
                return true;
            else
                return false;
        }
    }
}