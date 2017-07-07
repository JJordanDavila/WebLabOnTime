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
    public class DoctorsController : ApiController
    {
        BLDoctors bl = new BLDoctors();

        [HttpGet]
        public IHttpActionResult GetDoctors(int filter)
        {
            var dt = bl.GetDoctors(filter);

            DoctorModel docModel = new DoctorModel();
            foreach (DataRow row in dt.Rows)
            {
                DoctorsDTO doc = new DoctorsDTO
                {
                    id = int.Parse(row["id"].ToString()),
                    personsid = int.Parse(row["persons_id"].ToString()),
                    doctornumber = row["doctornumber"].ToString(),
                    speciality = row["speciality"].ToString(),
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
                docModel.doctors.Add(doc);
            }

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(docModel);
        }
    }
}
