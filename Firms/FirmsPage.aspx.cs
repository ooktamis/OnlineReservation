using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.Firms
{
    public partial class FirmsPage : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                rpFirmList.DataSource = db.FIRM.ToList();
                rpFirmList.DataBind();
            }

        }
    }
}