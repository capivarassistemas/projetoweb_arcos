using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoweb_arcos
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            string login, senha;

            login = txtLogin.Text;
            senha = txtSenha.Text;

            if (login.Equals("") || senha.Equals(""))
            {
                lblAviso.Text = "Existe(m) campo(s) vazio(s).";
            }
            else
            {
                ARCOSBDEntities context = new ARCOSBDEntities();

                LOGAR user = context.LOGAR.FirstOrDefault(l => l.LOGIN.Equals(login) && l.SENHA.Equals(senha));

                if(user != null)
                {
                    Response.Redirect("Cadastro.aspx");
                }
                else
                {
                    lblAviso.Text = "Login ou senha está incorreto.";
                }
            }
        }
    }
}