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
    public class PatientsController : ApiController
    {
        BLPatients bl = new BLPatients();

        [HttpGet]
        public IHttpActionResult GetPatients(int filter)
        {
            var dt = bl.GetPatients(filter);

            PatientModel patModel = new PatientModel();

            foreach (DataRow row in dt.Rows)
            {
                PatientDTO pat = new PatientDTO
                {
                    id = int.Parse(row["id"].ToString()),
                    personsid = int.Parse(row["persons_id"].ToString()),
                    motive = row["motive"].ToString(),
                    active = Convert.ToBoolean(row["active"]),
                    idPerson = int.Parse(row["idPerson"].ToString()),
                    names = row["names"].ToString(),
                    lastnames = row["lastnames"].ToString(),
                    address = row["address"].ToString(),
                    phone = row["phone"].ToString(),
                    email = row["email"].ToString(),
                    documentnumber = row["documentnumber"].ToString(),
                    ruc = row["ruc"].ToString(),
                    type = row["type"].ToString(),
                    bussinessname = row["bussinessname"].ToString()
                };
                patModel.patients.Add(pat);
            }

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(patModel);
        }
    }
}
