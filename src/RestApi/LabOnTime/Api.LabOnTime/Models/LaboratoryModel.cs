using Api.LabOnTime.Models.DTO;
using System.Collections.Generic;

namespace Api.LabOnTime.Models
{
    public class LaboratoryModel
    {
        public LaboratoryModel()
        {
            laboratory = new List<LaboratoryDTO>();
        }
        public List<LaboratoryDTO> laboratory { get; set; }
    }
}