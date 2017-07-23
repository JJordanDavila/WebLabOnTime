using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;


namespace Api.LabOnTime.DataAccess
{
    public class DAPatientAnalysis
    {
        private string conexionString = ConfigurationManager.ConnectionStrings["MySqlConn"].ToString();
        public DataTable GetPatientAnalysis(int paciente)
        {
            MySqlConnection cnn = new MySqlConnection(conexionString);
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter();
            DataTable dt = new DataTable();
            cnn.Open();
            cmd = new MySqlCommand("USP_PatientAnalysisList", cnn);
            cmd.Parameters.Add("paciente", MySqlDbType.Int32).Value = paciente;
            cmd.CommandType = CommandType.StoredProcedure;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }
    }
}
