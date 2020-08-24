using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.UserControls
{
    public partial class UCSideBar : BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (IsUser)
                {
                    dvislemler.Visible = false;
                    dvyönetim.Visible = false;
                    dvrandevu.Visible = true;
                    dvrandevudefterim.Visible = false;
                }
                else if (IsAdmin)
                {
                    dvislemler.Visible = true;
                    dvyönetim.Visible = true;
                    dvrandevu.Visible = true;
                }
                else if (IsFirmResponsible)
                {
                    dvislemler.Visible = true;
                    dvyönetim.Visible = false;
                    dvrandevu.Visible = true;
                }
                else if (IsDepartmentEmployee)
                {
                    dvislemler.Visible = false;
                    dvyönetim.Visible = false;
                    dvrandevu.Visible = true;
                    dvrandevual.Visible = false;
                    dvrandevudefterim.Visible = true;
                    dvrandevularim.Visible = false;
                }
            }
        }
    }
}