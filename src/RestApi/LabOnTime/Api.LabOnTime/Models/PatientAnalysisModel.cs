using Api.LabOnTime.Models.DTO;
using System.Collections.Generic;



namespace Api.LabOnTime.Models
{
    public class PatientAnalysisModel
    {
        public PatientAnalysisModel()
        {
            patientAnalysisModel = new List<PatientAnalysisDTO>();
        }
        public List<PatientAnalysisDTO> patientAnalysisModel { get; set; }
    }
}