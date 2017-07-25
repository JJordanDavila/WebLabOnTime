using Api.LabOnTime.BussinessLogic;
using Api.LabOnTime.Models;
using Api.LabOnTime.Models.Response;
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
            loginModel.user.description = dt.Rows[0]["description"].ToString();
            loginModel.user.persons_id = int.Parse(dt.Rows[0]["persons_id"].ToString()); 
            loginModel.user.name = dt.Rows[0]["name"].ToString();
            loginModel.user.password = dt.Rows[0]["password"].ToString();
            loginModel.user.names = dt.Rows[0]["names"].ToString();
            loginModel.user.lastnames = dt.Rows[0]["lastnames"].ToString();
            loginModel.user.address = dt.Rows[0]["address"].ToString();
            loginModel.user.phone = dt.Rows[0]["phone"].ToString();
            loginModel.user.email = dt.Rows[0]["email"].ToString();
            loginModel.user.documentnumber = dt.Rows[0]["documentnumber"].ToString();
            loginModel.user.ruc = dt.Rows[0]["ruc"].ToString();
            loginModel.user.type = dt.Rows[0]["type"].ToString();
            loginModel.user.bussinessname = dt.Rows[0]["bussinessname"].ToString();
            loginModel.user.doctornumber = dt.Rows[0]["doctornumber"].ToString();
            loginModel.user.speciality = dt.Rows[0]["speciality"].ToString();

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(loginModel);
        }


        [HttpPost]
        public IHttpActionResult UpdateUser(int id, string password, string address, string email, string phone)
        {
            var response = new ResponseBD();
            var responsebl = blLogin.UpdateUser(id, password, address, email, phone);
            response.responseBD.Estado = responsebl.estado;
            response.responseBD.Mensaje = responsebl.mensaje;

            return Json(response);
        }






    }
}
