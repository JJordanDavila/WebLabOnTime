using Api.LabOnTime.Models.DTO;
using System.Collections.Generic;


namespace Api.LabOnTime.Models
{
    public class LaboratoryAnalysisModels
    {
        public LaboratoryAnalysisModels()
        {
            laboratoryAnalysis = new List<LaboratoryAnalysisDTO>();
        }
        public List<LaboratoryAnalysisDTO> laboratoryAnalysis { get; set; }
    }
}