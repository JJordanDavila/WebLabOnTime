using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLLogin
    {
        DALogin daLogin = new DALogin();

        public DataTable ValidateUser(string user, string password)
        {
            return daLogin.ValidateUser(user, password);
        }
    }
}
