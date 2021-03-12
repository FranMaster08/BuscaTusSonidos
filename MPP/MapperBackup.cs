using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MPP
{
    public class MapperBackup
    {

        public static bool RealizarRestore(string ruta)
        {
            try
            {
               return Conexion.GetInstance.RealizarRestore(ruta);
            }
            catch (Exception e)
            {
                throw e;
            }
        }



    }
}
