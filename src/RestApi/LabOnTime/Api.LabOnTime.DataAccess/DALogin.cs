using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace Api.LabOnTime.DataAccess
{
    public class DALogin
    {
        private string conexionString = ConfigurationManager.ConnectionStrings["MySqlConn"].ToString();
        public DataTable ValidateUser(string user, string password)
        {
            MySqlConnection cnn = new MySqlConnection(conexionString);
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter();
            DataTable dt = new DataTable();
            cnn.Open();
            cmd = new MySqlCommand("USP_Login", cnn);
            cmd.Parameters.Add("User", MySqlDbType.VarChar).Value = user;
            cmd.Parameters.Add("Pass", MySqlDbType.VarChar).Value = password;
            cmd.CommandType = CommandType.StoredProcedure;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }
    }
}
