using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ConservatorioVANew.Models;

namespace ConservatorioVANew.DataAcces
{
    public class UsuarioDB
    {
        private db_a6dce2_mozartvaEntities db = new db_a6dce2_mozartvaEntities();
        public Usuario Login(string email, string password)
        {
            Usuario usuario = null;
            var usu = (from User in db.Usuario
                       where User.email == email && User.contraseña == password select User).FirstOrDefault();
            if (usu != null)
            {
                usuario = new Usuario
                {
                    idusuario=usu.idUsuario,
                    nombreCompleto=usu.nombreCompleto,
                    nombreAlumno=usu.nombreAlumno,
                    email=usu.email,
                    idRol=usu.idRol,
                    nombreRol=Rol(usu.idRol)
                };
            }
            return usuario;
        }

        public bool RegistroAlumnos(Usuario usuario)
        {
            bool resultado = false;
            try
            {
                var nuevoUsuario = new Models.Usuario
                {
                    nombreCompleto = usuario.nombreCompleto,
                    nombreAlumno = usuario.nombreAlumno,
                    idRol = 3,
                    email = usuario.email,
                    contraseña = usuario.contraseña
                };
                db.Usuario.Add(nuevoUsuario);
                db.SaveChanges();
                resultado = true;
            }
            catch (Exception ex)
            {

            }
            return resultado;
        }

        public bool RegistroProfesores(Usuario usuario)
        {
            bool resultado = false;
            try
            {
                var nuevoUsuario = new Models.Usuario
                {
                    nombreCompleto = usuario.nombreCompleto,
                    nombreAlumno = usuario.nombreAlumno,
                    idRol = usuario.idRol,
                    email = usuario.email,
                    contraseña = usuario.contraseña
                };
                db.Usuario.Add(nuevoUsuario);
                db.SaveChanges();
                resultado = true;
            }
            catch (Exception ex)
            {

            }
            return resultado;
        }

        public string Rol(int id)
        {
            string rol = "";
            try
            {
                var rolUsuario = (from Rol in db.Rol
                           where Rol.idRol == id 
                           select Rol).FirstOrDefault();
                if (rolUsuario != null)
                {
                    rol = rolUsuario.nombre;
                }
            }
            catch(Exception ex) { }
            return rol;
        }
    }
}