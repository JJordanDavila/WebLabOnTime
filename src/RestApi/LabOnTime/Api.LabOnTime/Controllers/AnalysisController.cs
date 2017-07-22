using Api.LabOnTime.BussinessLogic;
using Api.LabOnTime.Models;
using Api.LabOnTime.Models.DTO;
using System;
using System.Data;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Api.LabOnTime.Controllers
{
    public class AnalysisController : ApiController
    {
        BLAnalysis bl = new BLAnalysis();

        [HttpGet]
        public IHttpActionResult GetAnalysis(int filter)
        {
            var dt = bl.GetAnalysis(filter);

            AnalysisModel analysisModel = new AnalysisModel();
            foreach (DataRow row in dt.Rows)
            {
                AnalysisDTO analysis = new AnalysisDTO
                {
                    id = int.Parse(row["id"].ToString()),
                    name = row["name"].ToString()

                };
                analysisModel.analysis.Add(analysis);
            }

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(analysisModel);
        }
    }
}