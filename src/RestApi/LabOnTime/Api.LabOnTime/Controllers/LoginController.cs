using Api.LabOnTime.BussinessLogic;
using Api.LabOnTime.Models;
using System;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Api.LabOnTime.Controllers
{
    public class LoginController : ApiController
    {
        BLLogin blLogin = new BLLogin();

        [HttpGet]
        public IHttpActionResult ValidateUser(string User, string Password)
        {
            var dt = blLogin.ValidateUser(User, Password);
            LoginModel loginModel = new LoginModel();
            loginModel.user.id = int.Parse(dt.Rows[0]["id"].ToString());
            loginModel.user.roles_id = int.Parse(dt.Rows[0]["roles_id"].ToString()); 
            loginModel.user.persons_id = int.Parse(dt.Rows[0]["persons_id"].ToString()); 
            loginModel.user.name = dt.Rows[0]["name"].ToString();
            loginModel.user.password = dt.Rows[0]["password"].ToString();
            loginModel.user.active = Convert.ToBoolean(dt.Rows[0]["active"]);

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(loginModel);
        }
    }
}
