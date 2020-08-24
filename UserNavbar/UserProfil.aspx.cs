using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineReservation.Web.DataLayer;

namespace OnlineReservation.Web.UserNavbar
{
    public partial class UserProfil : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                if (!Page.IsPostBack)
                {
                    if (IsValidQueryString("ID"))
                    {
                        Guid ID = Guid.Empty;

                        if (Guid.TryParse(Request.QueryString["ID"], out ID))
                        {
                            RECID = ID;

                        }
                    }
                    if (RECID != Guid.Empty)
                    {

                        VW_MEMBER rec = db.VW_MEMBER.Where(a => a.ID == RECID).FirstOrDefault();


                        txtUserName.Text = rec.NAME;
                        txtUserSurname.Text = rec.SURNAME;
                        txtUserEmail.Text = rec.LOGINNAME;
                        txtUserPhone.Text = rec.PHONE;
                        txtUserPassword.Text = rec.PASWORD;

                    }
                }


            }

            
        }
       
    }
}
                
