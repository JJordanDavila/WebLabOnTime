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
    public class LaboratorysController: ApiController
    {
        BLLaboratorys bl = new BLLaboratorys();

        [HttpGet]
        public IHttpActionResult GetLabortory(int filter)
        {
            var dt = bl.GetLabortorys(filter);

            LaboratoryModel labModel = new LaboratoryModel();
            foreach (DataRow row in dt.Rows)
            {
                LaboratoryDTO lab = new LaboratoryDTO
                {
                    id = int.Parse(row["id"].ToString()),
                    name = row["name"].ToString()
                
                };
                labModel.laboratory.Add(lab);
            }

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(labModel);
        }
    }
}