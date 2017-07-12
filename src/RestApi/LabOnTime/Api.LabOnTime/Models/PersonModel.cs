using Api.LabOnTime.Models.DTO;
using System.Collections.Generic;

namespace Api.LabOnTime.Models
{
    public class PersonModel
    {
        public PersonModel()
        {
            person = new List<PersonDTO>();
        }
        public List<PersonDTO> person { get; set; }
    }
}