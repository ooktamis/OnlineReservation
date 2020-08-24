using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.Firm
{
    public partial class FirmList : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (IsAdmin || IsFirmResponsible)
                {
                    List<VW_FIRM> list;
                    using (db = new novartz_stajyer1Entities())
                    {
                        if (IsFirmResponsible)
                        {
                            list = db.VW_FIRM.Where(t=>t.FIRMRESPONSIBLEID == CURRENTMEMBER.ID).ToList();
                        }
                        else
                        {
                            list = (from c in db.VW_FIRM select c).ToList();
                        }
                        
                        drpFirmCity.DataSource = db.CITY.ToList(); //kaynak seçiyoruz
                        drpFirmCity.DataValueField = "ID";
                        drpFirmCity.DataTextField = "NAME";
                        drpFirmCity.DataBind(); //yükleme işlemini yapıyoruz
                        drpFirmCity.Items.Insert(0, new ListItem("Seçiniz..", "0"));


                        drpFirmSector.DataSource = db.TYPESEKTOR.ToList();
                        drpFirmSector.DataValueField = "ID";
                        drpFirmSector.DataTextField = "NAME";
                        drpFirmSector.DataBind();
                        drpFirmSector.Items.Insert(0, new ListItem("Seçiniz..", "0"));
                    }
                    FirmListRep.DataSource = list;
                    FirmListRep.DataBind();
                }
                
            }
        }

        protected void NewFirm_Click(object sender, EventArgs e)
        {
            if (ValidateRecord())
            {
                FirmRegistion(txt_FirmName.Text, txt_Firmowner.Text, drpFirmSector.Text, drpFirmCity.Text, drpFirmCityDistrict.Text, txt_Adress.Text, txt_Phone.Text, txt_Mail.Text);

                Response.Redirect("/Firm/FirmDetails.aspx");
            }
        }


        private bool ValidateRecord()
        {
            bool retval = true;

            if (string.IsNullOrEmpty(txt_Mail.Text))
            {
                retval = false;
                MessageBox("E-mail boş geçilemez.");
            }
            else if (!MEMBERMAIL(txt_Mail.Text))
            {
                retval = false;
                MessageBox("Geçersiz E-mail.");
            }
            return retval;
        }
        protected void drpFirmCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                byte cityID = Convert.ToByte(drpFirmCity.SelectedValue);
                drpFirmCityDistrict.DataSource = db.CITYDISTRICT.Where(t => t.CITYID == cityID).ToList();
                drpFirmCityDistrict.DataValueField = "ID";
                drpFirmCityDistrict.DataTextField = "NAME";
                drpFirmCityDistrict.DataBind();
                drpFirmCityDistrict.Items.Insert(0, new ListItem("Seçiniz..", "0"));

                upFirmCityDistrict.Update();
            }
        }
    }
}