using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=web; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "helloFromCodeBehind()", true);
        }

        protected void btnKayit(object sender, EventArgs e)
        {
            if (ad.Text != "" && soyad.Text != "" && email.Text != "" && sifre.Text != "")
            {
                baglanti.Open();
                try
                {
                    SqlCommand query = new SqlCommand("Insert into member (name, lastname, email, password ) Values ('" + ad.Text + "','" + soyad.Text + "',+'" + email.Text + "','" + sifre.Text + "' )", baglanti);
                    query.ExecuteNonQuery();
                    baglanti.Dispose();
                    baglanti.Close();

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Kaydınız Başarıyla Gerçekleşti','','success')", true);
                }
                catch
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Bir Hata Oluştu','Kayıt Yapılamadı','error')", true);
                }

            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Kayıt Yapılamadı','Kayıt Formundaki Alanları Eksiksiz Doldurun','error')", true);
            }

        }
        protected void btnGiris(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand query = new SqlCommand("select name,email,password from member where email=@email AND password=@passwd");
            query.Connection = baglanti;
            query.Parameters.Add("@email", SqlDbType.VarChar).Value = giris_email.Text;
            query.Parameters.Add("@passwd", SqlDbType.VarChar).Value = giris_sifre.Text;
            SqlDataReader oku = query.ExecuteReader();


            if (oku.Read())
            {
                Session["kullanici_adi"] = oku["name"].ToString();
                giris_nav.Visible = false;
                kayit_nav.Visible = false;
                icon.Visible = true;
                kullanici_adi.Text = "Merhaba "+Session["kullanici_adi"].ToString();

                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Giriş Yaptınız','','success')", true);

                card1.Visible = true;
                card2.Visible = true;
                card3.Visible = true;
                card4.Visible = true;
                card5.Visible = true;
                card6.Visible = true;
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Hata!','Kullanıcı Adı veya Şifre Hatalı','error')", true);
            }

            baglanti.Close();
        }

        protected void exit(object sender, EventArgs e)
        {
            Session.Remove("kullanici_adi");
            giris_nav.Visible = true;
            kayit_nav.Visible = true;
            icon.Visible = false;
            kullanici_adi.Text = " ";

            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Çıkış Yaptınız','','success')", true);

            card1.Visible = false;
            card2.Visible = false;
            card3.Visible = false;
            card4.Visible = false;
            card5.Visible = false;
            card6.Visible = false;

        }
    }
}
