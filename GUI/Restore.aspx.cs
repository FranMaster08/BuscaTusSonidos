using BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class Restore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var User = $"{((BE.Usuario)Session["usuarioBackend"])?.User}";
            var IdRol = GestorUsuario.ObtenerRolUsuario(User);
            var permiso = GestorUsuario.VerificarAcceso(IdRol, "Restore.aspx");

            if (permiso.Count == 0)
            {
                Response.Redirect("AccesoDenegado.aspx");
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            //btnFileUpload.SaveAs(Server.MapPath(".") + "/backup");

        }

        protected void restore_Click(object sender, EventArgs e)
        {

            try
            {
                string SaveLocation = string.Empty;
                string nombreArchivo = string.Empty;
                string destino = @"C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup";//poner la ruta donde quieres que quede el archivo
                //Subimos Backup al Server
                if (btnFileUpload.HasFile)
                {
                    nombreArchivo = System.IO.Path.GetFileName(btnFileUpload.PostedFile.FileName);
                    SaveLocation = destino + @"\" + btnFileUpload.FileName;
                    //guardamos el archivo
                    btnFileUpload.PostedFile.SaveAs(SaveLocation);
                }
                
                bool realizado = GestorBackup.RealizarRestore(destino + @"\"+btnFileUpload.FileName);

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}