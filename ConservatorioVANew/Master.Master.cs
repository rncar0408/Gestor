using ConservatorioVANew.DataAcces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConservatorioVANew
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Usuario"] == null)
            {
                Session["Error"] = 1;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Usuario u = new Usuario();
                u = (Usuario)Session["Usuario"];
                lblNombreUser.Text = u.nombreCompleto;
                if (u.nombreRol == "Directora")
                {
                    lblRol.Text = u.nombreRol + " / Profesora";
                }
                else
                {
                    lblRol.Text = u.nombreRol;
                }
                lblMail.Text = u.email;
                if (u.email == "aylenmartinezq@gmail.com")
                {
                    fotoPerfil.Attributes.Add("style", "background-image:url('assets/media/users/aylen.jpg')");
                }
                else
                {
                    fotoPerfil.Attributes.Add("style", "background-image:url('assets/media/users/blank.jpg')");
                }
            }
            fecha.Text = DateTime.Now.ToString("dddd")+" "+ DateTime.Now.Day.ToString()+" de "+ DateTime.Now.ToString("MMMM")+" de "+ DateTime.Now.Year.ToString();
            
        }
        protected void btnCerrarSesion_click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Session["Error"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}