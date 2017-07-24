using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Api.LabOnTime.Models.DTO
{
    public class LaboratoryAnalysisDTO
    {
        public int id_medical_analisis { get; set; }
        public int id_request_analisis { get; set; }
        public string resultado_laboratorio { get; set; }
        public string status_laboratorio { get; set; }
        public string motivo_consulta_paciente { get; set; }
        public int id_laboratorio { get; set; }
        public string nombre_laboratorio { get; set; }
        public int id_analisis { get; set; }
        public string tipo_analisis { get; set; }
        public int id_paciente { get; set; }
        public string nombres_paciente { get; set; }
        public int id_doctor { get; set; }
        public string nombres_doctor { get; set; }
        
    }
}