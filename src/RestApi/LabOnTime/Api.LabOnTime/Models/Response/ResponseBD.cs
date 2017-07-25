using Api.LabOnTime.Models.DTO;

namespace Api.LabOnTime.Models.Response
{
    public class ResponseBD
    {
        public ResponseBD() {
            responseBD = new BDResponseDTO();

            } 
        public BDResponseDTO responseBD { get; set; }
    }
}