using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.UserControls
{
    public partial class UCHeader : BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)//sayfa null değilse boş değilse bunu yap.
            UserNameLabel.Text =CURRENTMEMBER.NAME ;
        }
      
    }
}