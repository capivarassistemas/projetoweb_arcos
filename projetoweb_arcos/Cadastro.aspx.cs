using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoweb_arcos
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            ARCOSBDEntities context = new ARCOSBDEntities();

            string nome, cpf;

            nome = txtNome.Text;
            cpf = txtCpf.Text;

            if (nome.Equals("") || cpf.Equals(""))
            {
                lblAviso.Text = "Existe(m) campo(s) em branco.";
            }
            else
            {
                PESSOA user = context.PESSOA.FirstOrDefault(p => p.NOME.Equals(nome) && p.CPF.Equals(cpf));

                if(user != null)
                {
                    lblAviso.Text = "Usuário " + nome + " já está cadastrado.";
                }
                else
                {
                    lblAviso.Text = "Usuário não cadastrado";
                }
            }


          
        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            string nome, cpf, rg, cep, logradouro, numero, complemento, bairro, cidade, telefone, email;
            bool fornecedor;

            nome = txtNome.Text;
            cpf = txtCpf.Text;
            rg = txtRg.Text;
            cep = txtCep.Text;
            logradouro = txtLogradouro.Text;
            numero = txtNumero.Text;
            complemento = txtComplemento.Text;
            bairro = txtBairro.Text;
            cidade = txtCidade.Text;
            telefone = txtTelefone.Text;
            email = txtEmail.Text;
            fornecedor = chkFornecedor.Checked;

            if (nome.Equals("") || cpf.Equals("") || rg.Equals("") || logradouro.Equals("") || numero.Equals("")
                || complemento.Equals("") || bairro.Equals("") || cidade.Equals("") || telefone.Equals("")
                || email.Equals(""))
            {

                lblAviso.Text = "Existe(m) campo(s) em branco";
            }
            else
            {
                if (chkFornecedor.Checked)
                {
                    fornecedor = true;
                }
                else
                {
                    fornecedor = false;
                }

                ARCOSBDEntities context = new ARCOSBDEntities();

                PESSOA p = new PESSOA();

                p.CPF = cpf;
                p.NOME = nome;
                p.RG = rg;
                p.CEP = cep;
                p.LOGRADOURO = logradouro;
                p.NUMERO = numero;
                p.COMPLEMENTO = complemento;
                p.BAIRRO = bairro;
                p.CIDADE = cidade;
                p.TELEFONE = telefone;
                p.EMAIL = email;
                p.FORNECEDOR = fornecedor;

                context.PESSOA.Add(p);

                context.SaveChanges();

                lblAviso.Text = "Usuário cadastrado com sucesso.";

                Limpar();
            }


           
        }


        public void Limpar()
        {
            txtNome.Text = string.Empty;
            txtCpf.Text = string.Empty;
            txtRg.Text = string.Empty;
            txtCep.Text = string.Empty;
            txtLogradouro.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtComplemento.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtCidade.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            chkFornecedor.Checked = false;
        }

        

      
       
    }
}