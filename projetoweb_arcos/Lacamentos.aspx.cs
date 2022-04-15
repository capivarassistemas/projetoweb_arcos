using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoweb_arcos
{
    public partial class Lacamentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologado"] != null)
            {
                String nome = (String)Session["usuariologado"];
                lblUsuarioLogado.Text = nome;
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}