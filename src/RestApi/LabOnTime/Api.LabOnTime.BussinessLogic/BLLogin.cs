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

        public int UpdateUser(int id, string password, string address, string email, string phone)
        {
            return daLogin.UpdateUser(id, password, address, email, phone);
        }



    }
}
