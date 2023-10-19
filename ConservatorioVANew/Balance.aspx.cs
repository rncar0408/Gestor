using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConservatorioVANew
{
    public partial class Balance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCerrarSesion_click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Session["Error"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}