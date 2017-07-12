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
    public class PersonsController : ApiController
    {
        BLPersons bl = new BLPersons();

        [HttpGet]
        public IHttpActionResult GetPersons(int filter)
        {
            var dt = bl.GetPersons(filter);

            PersonModel perModel = new PersonModel();
            foreach (DataRow row in dt.Rows)
            {
                PersonDTO lab = new PersonDTO
                {
                    id = int.Parse(row["id"].ToString()),
                    names = row["names"].ToString()

                };
                perModel.person.Add(lab);
            }

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(perModel);
        }
    }
}