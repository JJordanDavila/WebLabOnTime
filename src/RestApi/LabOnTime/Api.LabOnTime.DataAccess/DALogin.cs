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
            cnn.Close();
            return dt;
        }


        public int UpdateUser (int id ,string password, string address, string email,string phone)
        {
            MySqlConnection cnn = new MySqlConnection(conexionString);
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter();
            cmd = new MySqlCommand("USP_UsersUpdate", cnn);
            cmd.Parameters.Add("id", MySqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("password", MySqlDbType.VarChar).Value = password;
            cmd.Parameters.Add("address", MySqlDbType.VarChar).Value = address;
            cmd.Parameters.Add("email", MySqlDbType.VarChar).Value = email;
            cmd.Parameters.Add("phone", MySqlDbType.VarChar).Value = phone;
            cmd.CommandType = CommandType.StoredProcedure;
            cnn.Open();
            int query = cmd.ExecuteNonQuery();
            cnn.Close();
            return query;
        }


    }
}
