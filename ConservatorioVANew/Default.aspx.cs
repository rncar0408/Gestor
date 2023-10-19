using ConservatorioVANew.DataAcces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConservatorioVANew
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["Error"]!=null)
                {
                    string errorDescripcion = "";
                    int error = int.Parse(Session["Error"].ToString());
                    if (error == 1)
                    {
                        errorDescripcion = string.Format("Debe iniciar sesión para acceder al sistema.");
                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "ErrorDatos('" + errorDescripcion + "')", true);
                    }

                    if (error == 2)
                    {
                        errorDescripcion = string.Format("No tiene permisos suficientes para acceder a esta página.");
                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "ErrorDatos('" + errorDescripcion + "')", true);
                    }
                }
            }
        }

        protected void kt_login_signin_submit_Click(object sender, EventArgs e)
        {
            string errorMail = "";
            string errorPass = "";
            if (string.IsNullOrEmpty(email.Value) || string.IsNullOrEmpty(pass.Value))
            {
                if (string.IsNullOrEmpty(email.Value))
                {
                    errorMail = string.Format("El mail no puede estar vacío");
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "ErrorDatos('" + errorMail + "')", true);
                    return;
                }

                if (string.IsNullOrEmpty(pass.Value))
                {
                    errorPass = string.Format("La contraseña no puede estar vacía");
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "ErrorDatos('" + errorPass + "')", true);
                    return;
                }
            }
            UsuarioDB usuarioDB = new UsuarioDB();
            Usuario usuario = usuarioDB.Login(email.Value, Encriptar(pass.Value));
            if (usuario != null)
            {
                Session["Usuario"] = usuario;
                Session["Error"] = null;
                if (usuario.idRol == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Exito();window.location='PanelPrincipal.aspx';", true);
                }
                if (usuario.idRol == 2)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Exito();window.location='PanelPrincipalProfesor.aspx';", true);
                }
                if (usuario.idRol == 3)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Exito();window.location='PanelPrincipalAlumnos.aspx';", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "ErrorSesion()", true);
            }
        }

        protected void kt_login_signup_submit_Click(object sender, EventArgs e)
        {
            UsuarioDB usuarioDB = new UsuarioDB();
            Usuario usuario = new Usuario
            {
                idRol = 3,
                contraseña = Encriptar(txtContraseña.Value),
                email = txtEmail.Value,
                nombreAlumno = txtNombreAlumno.Value,
                nombreCompleto = txtNombrePrincipal.Value
            };
            bool respuesta = usuarioDB.RegistroAlumnos(usuario);
            if (respuesta)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "RegistroExitoso()", true);
            }
            else
            {

            }
        }

        public string Encriptar(string Input)
        {
            byte[] IV = ASCIIEncoding.ASCII.GetBytes("qualityi"); // La clave debe ser de 8 caracteres
            byte[] EncryptionKey = Convert.FromBase64String("rpaSPvIvVLlrcmtzPU9/c67Gkj7yL1S5"); // No se puede alterar la cantidad de caracteres pero si la clave
            byte[] buffer = Encoding.UTF8.GetBytes(Input);
            TripleDESCryptoServiceProvider des = new TripleDESCryptoServiceProvider();
            des.Key = EncryptionKey;
            des.IV = IV;

            return Convert.ToBase64String(des.CreateEncryptor().TransformFinalBlock(buffer, 0, buffer.Length));
        }
    }
}