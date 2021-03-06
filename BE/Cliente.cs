using System;
using System.Collections.Generic;
using System.Text;

namespace BE
{
    public class Cliente
    {
        public int CodCliente { get; set; }
        public string Apellido { get; set; }
        public string Nombre { get; set; }
        public string Dni { get; set; }
        public string DomEntrega { get; set; }
        public string DomFacturacion { get; set; }
        public string Email { get; set; }
        public string Pass { get; set; }
        public string Telefono { get; set; }
        public string Usuario { get; set; }
    }

    public class EstadoCliente
    {
        public const string PENDIENTE = "Pendiente";
        public const string CONFIRMADO = "Confirmado";
    }
}
