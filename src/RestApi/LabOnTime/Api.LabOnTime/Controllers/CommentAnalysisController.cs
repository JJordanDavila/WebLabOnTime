using Api.LabOnTime.BussinessLogic;
using Api.LabOnTime.Models;
using Api.LabOnTime.Models.DTO;
using Api.LabOnTime.BussinessLogic;
using Api.LabOnTime.Models;
using Api.LabOnTime.Models.Response;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Api.LabOnTime.Controllers
{
    public class CommentAnalysisController : ApiController
    {
        BLCommentAnalysis bl = new BLCommentAnalysis();

        [HttpPost]
        public IHttpActionResult InsertCommentAnalysis(int medicalAnalysisId, string description, string priority)
        {

            var response = new ResponseBD();
            var responsebl = bl.InsertCommentAnalysis(medicalAnalysisId, description, priority);
            response.responseBD.Estado = responsebl.estado;
            response.responseBD.Mensaje = responsebl.mensaje;

            return Json(response);
        }
    }
}