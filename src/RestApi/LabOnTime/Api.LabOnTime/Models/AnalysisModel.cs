using Api.LabOnTime.Models.DTO;
using System.Collections.Generic;

namespace Api.LabOnTime.Models
{
    public class AnalysisModel
    {
        public AnalysisModel()
        {
            analysis = new List<AnalysisDTO>();
        }
        public List<AnalysisDTO> analysis { get; set; }
    }
}