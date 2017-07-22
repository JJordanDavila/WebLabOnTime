using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace Api.LabOnTime.DataAccess
{
    public class DAAnalysis
    {
        private string conexionString = ConfigurationManager.ConnectionStrings["MySqlConn"].ToString();
        public DataTable GetAnalysis(int Filter)
        {
            MySqlConnection cnn = new MySqlConnection(conexionString);
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter();
            DataTable dt = new DataTable();
            cnn.Open();
            cmd = new MySqlCommand("USP_AnalysisList", cnn);
            cmd.Parameters.Add("filter", MySqlDbType.Int32).Value = Filter;
            cmd.CommandType = CommandType.StoredProcedure;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }

    }
}
