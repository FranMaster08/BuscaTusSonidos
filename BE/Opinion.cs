﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class Opinion
    {
        public int Id { get; set; }
        public int NroPregunta { get; set; }
        public string NombrePregunta { get; set; }
        public int Puntuacion { get; set; }
        public string Tipo { get; set; }
        public string FechaInicio { get; set; }
        public string FechaFin { get; set; }

    }
}