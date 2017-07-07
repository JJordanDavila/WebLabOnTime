using Api.LabOnTime.Models.DTO;
using System.Collections.Generic;

namespace Api.LabOnTime.Models
{
    public class PatientModel
    {
        public PatientModel()
        {
            patients = new List<PatientDTO>();
        }
        public List<PatientDTO> patients { get; set; }
    }
}