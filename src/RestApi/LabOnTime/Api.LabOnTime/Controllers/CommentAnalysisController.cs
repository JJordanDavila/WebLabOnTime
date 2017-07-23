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
    public class CommentAnalysisController : ApiController
    {
        BLCommentAnalysis bl = new BLCommentAnalysis();

        [HttpPost]
        public int InsertCommentAnalysis(int medicalAnalysisId, string description, string priority)
        {
            var dt = bl.InsertCommentAnalysis(medicalAnalysisId, description, priority);

            return 1;
        }
    }
}