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

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            string centro_custo, codigo_barra, empresa, fornecedor, especie, data, caixa, baixa, observacoes, numero_notas, id;
             
            bool contabil, a_pagar;

            centro_custo = txtCentroCusto.Text;
            codigo_barra = txtCodBarras.Text;
            empresa = txtEmpresa.Text;
            fornecedor = txtFornecedor.Text;
            especie = txtEspecie.Text;
            data = txtData.Text;
            caixa = txtCaixa.Text;
            baixa = txtBaixa.Text;
            observacoes = txtObservacoes.Text;
            numero_notas = txtNumeroNotas.Text;
            id = txtId.Text;
            contabil = chkContabil.Checked;
            a_pagar = chkAPagar.Checked;

            if(chkContabil.Checked)
            {
                contabil = true;
            }
            else
            {
                contabil = false;
            }

            if(chkAPagar.Checked)
            {
                a_pagar = true;
            }
            else
            {
                a_pagar = false;
            }

            if(centro_custo.Equals("") || codigo_barra.Equals("") || empresa.Equals("") || fornecedor.Equals("") ||
                especie.Equals("") || data.Equals("") || caixa.Equals("") || baixa.Equals("") || observacoes.Equals("")
                || numero_notas.Equals("") || id.Equals(""))
            {
                lblAviso.Text = "Existe(m) campo(s) em branco.";
            }
            else
            {
                using(ARCOSBDEntities context = new ARCOSBDEntities())
                {

                    CONTA c = new CONTA();

                    c.CENTRO_CUSTO = centro_custo;
                    c.CODIGO_BARRA = codigo_barra;
                    c.EMPRESA = empresa;
                    c.FORNECEDOR = fornecedor;
                    c.CONTABIL = contabil;
                    c.NUMERO_NOTAS = Convert.ToInt32(numero_notas);
                    c.ESPECIE = especie;
                    c.DATA = Convert.ToDateTime(data);
                    c.A_PAGAR = a_pagar;
                    c.CAIXA = caixa;
                    c.BAIXA = baixa;
                    c.OBSERVACOES = observacoes;
                    c.ID_PESSOACONT = Convert.ToInt32(id);

                    context.CONTA.Add(c);
                    context.SaveChanges();

                    lblAviso.Text = "Conta cadastrada com sucesso.";

                }

                Limpar();
               
            }

        }

        public void Limpar()
        {
            txtCentroCusto.Text = string.Empty;
            txtCodBarras.Text = string.Empty;
            txtFornecedor.Text = string.Empty;
            txtEmpresa.Text = string.Empty;
            chkContabil.Checked = false;
            txtNumeroNotas.Text = string.Empty;
            txtEspecie.Text = string.Empty;
            txtData.Text = string.Empty;
            chkAPagar.Checked = false;
            txtCaixa.Text = string.Empty;
            txtBaixa.Text = string.Empty;
            txtObservacoes.Text = string.Empty;
            txtId.Text = string.Empty;
        }
    }
}