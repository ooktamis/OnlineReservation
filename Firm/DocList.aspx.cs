using OnlineReservation.Web.DataLayer;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineReservation.Web.Firm
{
    public partial class DocList : BasePage
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
                            FillDrp(DrpFirm, list, "ID", "NAME", "Seçiniz");
                        }
                        else
                        {
                            FillDrp(DrpFirm, db.FIRM.ToList(), "ID", "NAME", "Seçiniz");
                        }

                        dvDocList.Visible = false;
                        dvDoclistDeparment.Visible = false;
                        UpdatePanel.Update();
                    }
                }
            }
        }

        protected void DrpFirm_SelectedIndexChanged(object sender, EventArgs e)
        {

            using (db = new novartz_stajyer1Entities())
            {
                Guid firmID = Guid.Parse(DrpFirm.SelectedValue);
                List<FIRMBRANCH> branchList = db.FIRMBRANCH.Where(t => t.FIRMID == firmID).ToList();
                //List<FIRMDEPARTMENT> departmentlist = db.FIRMDEPARTMENT.Where(t => t.FIRMBRANCHID == firmID).ToList();
                List<FIRMDEPARTMENT> DepartmentList = db.FIRMDEPARTMENT.Where(t => t.FIRMID == firmID).ToList();

                if (branchList.Count > 0)//Şubeleri varsa 
                {
                    FillDrp(DrpBranch, branchList, "ID", "NAME", "Seçiniz");
                    dvDocList.Visible = true;
                    //if (departmentlist.Count > 0)//Şubelerin bölümleri varsa
                    //{
                    //    FillDrp(DrpDepartment, departmentlist, "ID", "NAME", "Seçiniz");
                    //    dvDoclistDeparment.Visible = true;
                    //}
                    //else//Şubelerin Bölümleri yoksa
                    //{
                    //    dvDoclistDeparment.Visible = false;
                    //}
                    UpdatePanel.Update();
                }
                else// şubeleri yoksa 
                {
                    //FillDrp(DrpDepartment, DepartmentList, "ID", "NAME", "Seçiniz");
                    //dvDoclistDeparment.Visible = true;
                    //dvDocList.Visible = false;
                    //UpdatePanel.Update();
                }
            }
        }

        protected void DrpBranch_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (db = new novartz_stajyer1Entities())
            {
                Guid BranchID = Guid.Parse(DrpBranch.SelectedValue);
                List<FIRMDEPARTMENT> departmentlist = db.FIRMDEPARTMENT.Where(t => t.FIRMBRANCHID == BranchID).ToList();

                //FillDrp(DrpDepartment, db.FIRMDEPARTMENT.Where(t => t.FIRMBRANCHID == BranchID).ToList(), "ID", "NAME", "Seçiniz");
                //DrpDepartment.Items.Clear();

                if (departmentlist.Count > 0)//Şubelerin bölümleri varsa
                {
                    FillDrp(DrpDepartment, departmentlist, "ID", "NAME", "Seçiniz");
                    dvDoclistDeparment.Visible = true;
                }
                else//Şubelerin Bölümleri yoksa
                {
                    dvDoclistDeparment.Visible = false;
                }


                UpdatePanel.Update();
            }
        }
        //Buraya Kadar Firmaları seçtikten sonra Şubeleri Daha Sonra Bölümleri Seçmemizi Sağladık
        protected void rpWorkingList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                using (db = new novartz_stajyer1Entities())
                {
                    Guid id = Guid.Parse(e.CommandArgument.ToString());
                    VW_FIRMDEPARTMENTMEMBER departmentMember = db.VW_FIRMDEPARTMENTMEMBER.SingleOrDefault(t => t.ID == id);
                    RECID = departmentMember.ID;
                    hdnDepartmentID.Value = e.CommandArgument.ToString();
                    lblFirmUpdate.Text = departmentMember.FIRMNAME;
                    lblPersonel.Text = departmentMember.FULLNAME;
                    lblBranchUpdate.Text = departmentMember.FIRMBRANCHNAME;
                    FillDrp(DrpDepartmentUpdate, db.VW_FIRMDEPARTMENT.Where(t => t.FIRMBRANCHID == departmentMember.FIRMBRANCHID).ToList(), "ID", "NAME", "Seçiniz");
                    DrpDepartmentUpdate.SelectedValue = departmentMember.FIRMDEPARTMENTID.ToString();//Drop  seçileceği zaman; seçilmeden önceki hangi bölüme ait ise o bölüm seçili olarak gelmesini sağlıyor.
                    departmentMember.ISACTIVE = dropmdlcd.SelectedValue == "0";
                }
                ScriptManager.RegisterStartupScript(this, GetType(), "", "OpenModal()", true);

                upModalUpdate.Update();
            }
            else if (e.CommandName == "Delete")//Eğer buton Delete butonu ise bunu yapacak.
            {
                using (db = new novartz_stajyer1Entities())
                {
                    Guid id = Guid.Parse(e.CommandArgument.ToString());
                    FIRMDEPARTMENTMEMBER department = db.FIRMDEPARTMENTMEMBER.SingleOrDefault(t => t.MEMBERID == id);//SinglorDefault tek veri çekmek için kulladığımız deyim
                                                                                                                     //FIRMBRANCH test = (from t in db.FIRMBRANCH where t.ID == id select t).SingleOrDefault();
                    db.FIRMDEPARTMENTMEMBER.Remove(department);//silmek için kullandın removeyi
                    db.SaveChanges();
                    FillDepartment();
                    UpdatePanel.Update();

                }
            }
        }
        private void FillDepartment()//Firma Seçtiğimizde Listelememizi Sağlıyor.repater içini sağlıyor..
        {
            using (db = new novartz_stajyer1Entities())
            {
                if (DrpFirm.SelectedValue != "0")
                {
                    Guid id = Guid.Empty;
                    if (dvDocList.Visible && DrpBranch.SelectedValue != "0")
                    {
                        id = Guid.Parse(DrpBranch.SelectedValue);
                        rpWorkingList.DataSource = db.VW_FIRMDEPARTMENTMEMBER.Where(t => t.FIRMBRANCHID == id).ToList();

                        rpWorkingList.DataSource = db.VW_FIRMDEPARTMENTMEMBER.Where(t => t.FIRMBRANCHID == id).ToList();
                    }
                    else if (dvDocList.Visible && DrpBranch.SelectedValue == "0" || DrpDepartment.SelectedValue == "0")
                    {
                        id = Guid.Parse(DrpFirm.SelectedValue);
                        rpWorkingList.DataSource = db.VW_FIRMDEPARTMENTMEMBER.Where(t => t.FIRMID == id).ToList();
                    }
                    else
                    {
                        id = Guid.Parse(DrpDepartment.SelectedValue);
                        rpWorkingList.DataSource = db.VW_FIRMDEPARTMENTMEMBER.Where(t => t.FIRMDEPARTMENTID == id).ToList();
                    }
                    rpWorkingList.DataBind();
                }
                else
                {
                    MessageBox("Firma seçiniz!");
                    UpdatePanel.Update();
                }
            }
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            FillDepartment();
            UpdatePanel.Update();
        }

        //public void WorkingRegistration(string fullname, string mail, string phone, string password, string birtday)// Bölüme çalışan  eklemek için Oluşturduğumuz fonksiyon.
        //{

        //    Guid id = Guid.NewGuid();
        //    if (dropmdlcd.SelectedValue == "0")
        //    {
        //        FIRMDEPARTMENTMEMBER rec = null;
        //        using (db = new novartz_stajyer1Entities())
        //        {
        //            rec = new FIRMDEPARTMENTMEMBER
        //            {
        //                FIRMDEPARTMENTID = Guid.Parse(DrpDepartment.SelectedValue),
        //                ISACTIVE = true,
        //                MEMBERID = id
        //            };
        //            db.FIRMDEPARTMENTMEMBER.Add(rec);
        //            db.SaveChanges();
        //        };
        //        MessageBox("İşleminiz Başarılı");
        //    }
        //    else
        //    {
        //        FIRMDEPARTMENTMEMBER rec = null;
        //        using (db = new novartz_stajyer1Entities())
        //        {
        //            rec = new FIRMDEPARTMENTMEMBER
        //            {
        //                FIRMDEPARTMENTID = Guid.Parse(DrpDepartment.SelectedValue),
        //                ISACTIVE = false,
        //                MEMBERID = id
        //            };
        //            db.FIRMDEPARTMENTMEMBER.Add(rec);
        //            db.SaveChanges();
        //        };
        //        MessageBox("İşleminiz Başarılı");
        //    }
        //    MEMBER member = null;

        //    using (db = new novartz_stajyer1Entities())
        //    {
        //        member = new MEMBER
        //        {
        //            FULLNAME = fullname,
        //            LOGINNAME = mail,
        //            //BIRDDATE = DateTime.ParseExact(birtday, "yyyyMMdd", CultureInfo.InvariantCulture).ToString("yyyy-MM-dd"),
        //            PHONE = phone,
        //            PASWORD = password,
        //            ID = id
        //        };
        //        db.MEMBER.Add(member);
        //        db.SaveChanges();
        //    };
        //    DateTime birthDate;
        //    if (DateTime.TryParse(birtday, out birthDate))
        //    {
        //        BIRDDATE = birtday;
        //    }


        //}
        //private
        protected void btnSaveBranch_Click(object sender, EventArgs e)// Burada Kaldım...
        {
        }

        private bool ValidateRecord()
        {
            DateTime birthDate;
            bool retval = true;

            if (string.IsNullOrEmpty(txtmdlSurname.Text))
            {
                retval = false;
                MessageBox("Soyisim boş geçilemez.");
            }
            if (string.IsNullOrEmpty(txtmdlName.Text))
            {
                retval = false;
                MessageBox("İsim  boş geçilemez.");
            }
            else if (string.IsNullOrEmpty(txtmdlPhone.Text))
            {
                retval = false;
                MessageBox("Telefon boş geçilemez.");
            }
            else if (string.IsNullOrEmpty(txtmdlPassword.Text))
            {
                retval = false;
                MessageBox("Lütfen Sisteme Giriş için Şifre Oluşturunuz...");
            }
            else if (string.IsNullOrEmpty(txtmdlMail.Text))
            {
                retval = false;
                MessageBox("Lütfen Sisteme Giriş için Mail Oluşturunuz...");
            }
            else if (!MEMBERMAIL(txtmdlMail.Text))
            {
                retval = false;
                MessageBox("Geçersiz E-mail");
            }
            else if (MEMBERControl(txtmdlMail.Text))
            {
                retval = false;
                MessageBox("Kullanıcı zaten mevcut.");
            }

            else if (string.IsNullOrEmpty(txtmdlBirtday.Text))
            {
                retval = false;
                MessageBox("Doğum Tarihinizi Yazınız....");
            }


            else if (!DateTime.TryParse(txtmdlBirtday.Text, out birthDate))
            {
                retval = false;
                MessageBox("Hatalı Girdiniz...");
            }
            return retval;
        }

        protected void btnSaveFirmDepartmentMember_Click(object sender, EventArgs e)//Yeni çalışan ekle kısmını yaptım kayıt yapıyor seçilen kısıma..
        {
            if (ValidateRecord())
            {
                Guid id = Guid.NewGuid();
                MEMBER member = null;
                using (db = new novartz_stajyer1Entities())
                {
                    member = new MEMBER
                    {
                        NAME = txtmdlName.Text,
                        SURNAME = txtmdlSurname.Text,
                        LOGINNAME = txtmdlMail.Text,
                        BIRDDATE = Convert.ToDateTime(txtmdlBirtday.Text),
                        PHONE = txtmdlPhone.Text,
                        PASWORD = txtmdlPassword.Text,
                        GENDER = Convert.ToBoolean(drpmdlGender.SelectedValue == "1"),//Bayan ise true olarak çalışıyor
                        TYPEMEMBERID = Convert.ToByte(drpmdltypmember.SelectedValue),
                        CANLOGIN = true,
                        ID = id
                    };
                    db.MEMBER.Add(member);
                    db.SaveChanges();
                };
                if (drpmdltypmember.SelectedValue == "3")
                {
                    FIRMRESPONSIBLE rsp = null;
                    using (db = new novartz_stajyer1Entities())
                    {
                        Guid id3 = Guid.NewGuid();
                        rsp = new FIRMRESPONSIBLE
                        {
                            ID = id3,
                            FIRMID = Guid.Parse(DrpFirm.SelectedValue),
                            MEMBERID = id
                        };
                        db.FIRMRESPONSIBLE.Add(rsp);
                        db.SaveChanges();
                    }
                }


                FIRMDEPARTMENTMEMBER rec = null;
                using (db = new novartz_stajyer1Entities())
                {
                    Guid id2 = Guid.NewGuid();
                    rec = new FIRMDEPARTMENTMEMBER
                    {
                        ID = id2,
                        FIRMDEPARTMENTID = Guid.Parse(DrpDepartment.SelectedValue),
                        ISACTIVE = dropmdlcd.SelectedValue == "1",
                        MEMBERID = id
                    };
                    db.FIRMDEPARTMENTMEMBER.Add(rec);
                    db.SaveChanges();
                };
                MessageBox("İşleminiz Başarılı");
            }
        }

        protected void drpmdltypmember_SelectedIndexChanged(object sender, EventArgs e)//Burada typmember seçimi olacak daha yapılmadı.
        {

            //using (db = new novartz_stajyer1Entities())
            //{
            //    byte typmemberid = Convert.ToByte(drpmdltypmember.SelectedValue);
            //    FillDrp(DrpBranch, db.TYPEMEMBER.Where(t => t.ID == typmemberid).ToList(), "ID", "NAME", "Seçiniz");
            //    UpdatePanel.Update();
            //}
        }

        protected void btnUpdateSaveServer_Click(object sender, EventArgs e)//Güncelleme Bölümünde kaydetme işlemini yaptık...
        {
            using (db = new novartz_stajyer1Entities())
            {
                FIRMDEPARTMENTMEMBER rec = db.FIRMDEPARTMENTMEMBER.SingleOrDefault(t => t.ID == RECID);
                rec.FIRMDEPARTMENTID = Guid.Parse(DrpDepartmentUpdate.SelectedValue);
                rec.ISACTIVE = Convert.ToBoolean(DrpcdUpdate.SelectedValue == "1");
                db.SaveChanges();
                FillDepartment();
                UpdatePanel.Update();
            }

        }

        protected void btnNewWorking_Click(object sender, EventArgs e)
        {

            if (DrpDepartment.SelectedValue == "0" || DrpFirm.SelectedValue == "0" || DrpBranch.SelectedValue == "0")
            {
                if (DrpDepartment.SelectedValue == "0")
                {
                    MessageBox("Bölüm Seçiniz");
                }
                else if (DrpFirm.SelectedValue == "0")
                {
                    MessageBox(" Firma Seçiniz! ");
                }
                else if (DrpBranch.SelectedValue == "0")
                {
                    MessageBox(" Çalışan Eklemek için Bölüme Sahip Olmalısınız.  ");
                }
            }
            else
            {
                if (!dvDocList.Visible && DrpDepartment.SelectedValue != "0")
                {
                    dvmdlDoclist.Visible = false;
                }
                else
                {
                    dvmdlDoclist.Visible = true;
                    lblmdlBranch.Text = DrpBranch.SelectedItem.Text;
                }
                lblmdlFirm.Text = DrpFirm.SelectedItem.Text;
                lblmdlDepartment.Text = DrpDepartment.SelectedItem.Text;
                ScriptManager.RegisterStartupScript(this, GetType(), "", "$('#New-working').modal('show');", true);
                upNewDepartment.Update();
            }
        }
    }
}