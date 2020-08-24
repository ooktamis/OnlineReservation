using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web
{
    public partial class LogOut : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cookies["Reservastion-user"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("/Login.aspx");
            
        }
    }
}