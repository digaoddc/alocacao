﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace alocacao.Models
{
    public class Horario
    {
        public DayOfWeek DiaAula { get; set; }
        public Periodo PeriodoAula { get; set; }
        public Intervalo Hora { get; set; }

    }
}
