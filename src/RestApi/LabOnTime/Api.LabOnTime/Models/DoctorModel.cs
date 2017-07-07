using Api.LabOnTime.Models.DTO;
using System.Collections.Generic;

namespace Api.LabOnTime.Models
{
    public class DoctorModel
    {
        public DoctorModel()
        {
            doctors = new List<DoctorsDTO>();
        }
        public List<DoctorsDTO> doctors { get; set; }
    }
}