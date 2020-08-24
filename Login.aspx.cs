
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using OnlineReservation.Web.DataLayer;


namespace OnlineReservation.Web
{
    public partial class Login : BasePage
    {
        protected override void OnPreInit(EventArgs e) //Bu olay sayfa isteği yanıt olarak bir geri gönderme sayfa olup yüklendiği gibi koşullarını kontrol etmenizi sağlar. Ayrıca, profil özellikleri değerlerini kontrol edebilirsiniz.
        {
            LOGINREQUIRE = false;
            base.OnPreInit(e);
        }
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Reservastion-user"] != null)//Cookie işlemi yapmak için nesnein null olup olmadığına bakıyoruz.
            {
                string cookieData = Request.Cookies["Reservastion-user"].Value;//Cookie değerini stringe dönüştürdük. Value olarak aldık.
                Guid cookieID = Guid.Parse(cookieData);//stringi Guid ettik.
                MEMBER rec = null;
                using (db = new novartz_stajyer1Entities())
                {
                    rec = db.MEMBER.Where(a => a.ID == cookieID).FirstOrDefault();//tablodan ID çektik sayfaya yönlendirdik.
                    CURRENTMEMBER = rec;
                    Response.Redirect("/Default.aspx");
                }
            }
        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            MEMBER user = GetMemberByLoginname(User_Name.Text, Password1.Text);
            if (user != null)
            {
                CURRENTMEMBER = user;

                IsUser = CURRENTMEMBER.TYPEMEMBERID == 1;
                IsDepartmentEmployee = CURRENTMEMBER.TYPEMEMBERID == 2;
                IsFirmResponsible = CURRENTMEMBER.TYPEMEMBERID == 3;
                IsAdmin = CURRENTMEMBER.TYPEMEMBERID == 4;

                if (txt_Checkbox.Checked)//Beni unutma kısmında ki checkedbox'ın işaretli olup olmadığına baktık.
                {
                    Response.Cookies["Reservastion-user"].Value = CURRENTMEMBER.ID.ToString();
                    Response.Cookies["Reservastion-user"].Expires = DateTime.Now.AddDays(365);
                }
                else
                {
                    Response.Cookies["Reservastion-user"].Expires = DateTime.Now.AddDays(-1);
                }

                Response.Redirect("/Default.aspx");
            }
            else
            {
                MessageBox("Giriş Başarısız.");
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            if (ValidateRecord())
            {
                MemberRegistion(txt_name.Text, txt_LastName.Text, txt_Phone.Text, txt_Mail.Text, txt_Password.Text);
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
                MessageBox("Geçersiz E-mail");
            }
            else if (MEMBERControl(txt_Mail.Text))
            {
                retval = false;
                MessageBox("Kullanıcı zaten mevcut.");
            }
            else if (txt_Password.Text != txt_RepaterPassword.Text)
            {
                retval = false;
                MessageBox("Şifreler uyuşmuyor.");
            }

            return retval;
        }
        private void LoginMember(MEMBER mem)
        {
            CURRENTMEMBER.ID = mem.ID;
        }
    }
}