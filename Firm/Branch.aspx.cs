using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.Firm
{
    public partial class Branch : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (IsAdmin || IsFirmResponsible)
                {
                    using (db = new novartz_stajyer1Entities())
                    {
                        if (IsFirmResponsible)
                        {
                            List<VW_FIRM> list;
                            list = db.VW_FIRM.Where(t => t.FIRMRESPONSIBLEID == CURRENTMEMBER.ID).ToList();
                            FillDrp(drpFirm, list, "ID", "NAME", "Seçiniz");
                        }
                        else
                        {
                            FillDrp(drpFirm, db.FIRM.ToList(), "ID", "NAME", "Seçiniz");
                        }
                        FillDrp(drpBranchCity, db.CITY.ToList(), "ID", "NAME", "Seçiniz");
                        FillDrp(drpBranchSektor, db.TYPESEKTOR.ToList(), "ID", "NAME", "Seçiniz");
                        drpBranchDiscrit.Items.Insert(0, new ListItem("Seçiniz..", "0"));
                    }
                }
            }
        }
        private void FillBranch()//Firma Seçtiğimiz yer Firma seçmemizi sağlıyor.
        {
            using (db = new novartz_stajyer1Entities())
            {
                if (drpFirm.SelectedValue != "0")
                {
                    Guid id = Guid.Parse(drpFirm.SelectedValue);
                    rpBranchList.DataSource = db.VW_FIRMBRANCH.Where(t => t.FIRMID == id).ToList();
                    rpBranchList.DataBind();
                }
                else
                {
                    MessageBox("Firma seçiniz!");
                }
            }
        }
        protected void btnList_Click(object sender, EventArgs e)//Listele Butonuna basıldığı zaman listeletmeyi sağlar....
        {
            FillBranch();
        }
        protected void btnSaveBranch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtBranch.Text))
            {
                MessageBox("Lütfen Şube İsmi Giriniz...");
                ScriptManager.RegisterStartupScript(this, GetType(), "", "$('#modal-table').modal('show');", true);
            }
            else
                BranchRegistration(txtBranch.Text);
        }
        public void BranchRegistration(string name)//******//
        {
            FIRMBRANCH rec = null;
            using (db = new novartz_stajyer1Entities())
            {
                rec = new FIRMBRANCH
                {
                    NAME = name,
                    FIRMID = Guid.Parse(drpFirm.SelectedValue),
                    ID = Guid.NewGuid()
                };
                db.FIRMBRANCH.Add(rec);
                db.SaveChanges();
            };
            MessageBox("İşleminiz Başarılı");
            FillBranch();
        }
        protected void Modalbutonn_Click(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                if (drpFirm.SelectedValue == "0")
                {
                    MessageBox("Firma seçiniz!");
                }
                else
                {
                    lblFirmName.Text = drpFirm.SelectedItem.Text; //Drop Listlerde Name ksımlarını yazdırmamızı Sağlar.
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "$('#modal-table').modal('show');", true);
                }
            }
        }
        protected void rpBranchList_ItemCommand(object source, RepeaterCommandEventArgs e)//Repaetr içindeki Butonları temsil eder...
        {
            if (e.CommandName == "Update")
            {
                using (db = new novartz_stajyer1Entities())
                {
                    Guid id = Guid.Parse(e.CommandArgument.ToString());
                    VW_FIRMBRANCH branch = db.VW_FIRMBRANCH.SingleOrDefault(t => t.ID == id);
                    RECID = branch.ID;
                    hdnBranchID.Value = e.CommandArgument.ToString();
                    txtBranchName.Text = branch.NAME;
                    txtBranchPhone.Text = branch.PHONE;
                    txtBranchAdress.Text = branch.ADRESS;
                    txtBranchMail.Text = branch.EMAIL;
                    if (branch.CITYID.HasValue)
                    {
                        drpBranchCity.SelectedValue = branch.CITYID.ToString();
                        drpBranchCity_SelectedIndexChanged(null, null);
                        if (branch.CITYDISTRICTID.HasValue)
                        {
                            drpBranchDiscrit.SelectedValue = branch.CITYDISTRICTID.ToString();
                        }
                    }
                }
                ScriptManager.RegisterStartupScript(this, GetType(), "", "OpenModal()", true);
            }
            else if (e.CommandName == "Delete")//Eğer buton Delete butonu ise bunu yapacak.
            {
                using (db = new novartz_stajyer1Entities())
                {
                    Guid id = Guid.Parse(e.CommandArgument.ToString());
                    FIRMBRANCH branch = db.FIRMBRANCH.SingleOrDefault(t => t.ID == id);//SinglorDefault tek veri çekmek için kulladığımız deyim
                                                                                       //FIRMBRANCH test = (from t in db.FIRMBRANCH where t.ID == id select t).SingleOrDefault();
                    db.FIRMBRANCH.Remove(branch);//silmek için kullandın removeyi
                    db.SaveChanges();
                    FillBranch();
                    UpdatePanel.Update();

                }
            }

            //else if (e.CommandName == "Delete")//Eğer buton Delete butonu ise bunu yapacak.
            //{
            //    using (db = new novartz_stajyer1Entities())
            //    {
            //        Guid id = Guid.Parse(e.CommandArgument.ToString());
            //        FIRMBRANCH branch = db.FIRMBRANCH.SingleOrDefault(t => t.ID == id);//SinglorDefault tek veri çekmek için kulladığımız deyim
            //                                                                           //FIRMBRANCH test = (from t in db.FIRMBRANCH where t.ID == id select t).SingleOrDefault();
            //        db.FIRMBRANCH.Remove(branch);//silmek için kullandın removeyi
            //        db.SaveChanges();
            //        FillBranch();
            //        UpdatePanel.Update();

            //    }
            //}
        }
        protected void drpBranchCity_SelectedIndexChanged(object sender, EventArgs e)//İl-ilçe Birbirlerini Getirmesini Sağlar...
        {
            using (db = new novartz_stajyer1Entities())
            {
                byte cityID = Convert.ToByte(drpBranchCity.SelectedValue);
                FillDrp(drpBranchDiscrit, db.CITYDISTRICT.Where(t => t.CITYID == cityID).ToList(), "ID", "NAME", "Seçiniz");
                ScriptManager.RegisterStartupScript(this, GetType(), "", "OpenModal()", true);
            }
        }
        protected void btnUpdateSaveServer_Click(object sender, EventArgs e)//Bilgileri Güncelleme işlemini yapıyoruz Burada....
        {
            if (ValidateRecord())
            {
                using (db = new novartz_stajyer1Entities())
                {
                    FIRMBRANCH branch = db.FIRMBRANCH.SingleOrDefault(t => t.ID == RECID);
                    branch.NAME = txtBranchName.Text;
                    branch.PHONE = txtBranchPhone.Text;
                    branch.EMAIL = txtBranchMail.Text;
                    branch.ADRESS = txtBranchAdress.Text;
                    if (drpBranchCity.SelectedValue != "0")
                    {
                        branch.CITYID = Convert.ToByte(drpBranchCity.SelectedValue);
                    }
                    else
                    {
                        branch.CITYID = null;
                    }
                    if (drpBranchCity.SelectedValue != "0")
                    {
                        branch.CITYDISTRICTID = Convert.ToInt16(drpBranchDiscrit.SelectedValue);
                    }
                    else
                    {
                        branch.CITYDISTRICTID = null;
                    }

                    db.SaveChanges();
                    FillBranch();
                    UpdatePanel.Update();
                }
                MessageBox("Güncellendi Bilgileriniz...");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "OpenModal()", true);
            }
        }

        private bool ValidateRecord()
        {
            bool retval = true;

            if (string.IsNullOrEmpty(txtBranchName.Text))
            {
                retval = false;
                MessageBox("Şube Adı boş geçilemez.");
            }
            if (string.IsNullOrEmpty(txtBranchAdress.Text))
            {
                retval = false;
                MessageBox("Adres boş geçilemez.");
            }
            else if (string.IsNullOrEmpty(txtBranchPhone.Text))
            {
                retval = false;
                MessageBox("Telefon boş geçilemez.");
            }
            else if (string.IsNullOrEmpty(txtBranchMail.Text))
            {
                retval = false;
                MessageBox("Lütfen Sisteme Giriş için Mail Oluşturunuz...");
            }
            else if (!MEMBERMAIL(txtBranchMail.Text))
            {
                retval = false;
                MessageBox("Geçersiz E-mail");
            }
            //else if (MEMBERControl(txtmdlMail.Text))
            //{
            //    retval = false;
            //    MessageBox("Kullanıcı zaten mevcut.");
            //}
            return retval;
        }

    }
}