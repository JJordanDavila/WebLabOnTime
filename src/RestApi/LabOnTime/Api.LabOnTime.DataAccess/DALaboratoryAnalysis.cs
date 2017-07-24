using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
namespace Api.LabOnTime.DataAccess
{
    public class DALaboratoryAnalysis
    {
        private string conexionString = ConfigurationManager.ConnectionStrings["MySqlConn"].ToString();
        public DataTable GetLaboratoryAnalysis(int laboratorio, int analisis, int paciente, int doctor)
        {
            MySqlConnection cnn = new MySqlConnection(conexionString);
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter();
            DataTable dt = new DataTable();
            cnn.Open();
            cmd = new MySqlCommand("USP_LaboratoryAnalysisList", cnn);
            cmd.Parameters.Add("laboratorio", MySqlDbType.Int32).Value = laboratorio;
            cmd.Parameters.Add("analisis", MySqlDbType.Int32).Value = analisis;
            cmd.Parameters.Add("paciente", MySqlDbType.Int32).Value = paciente;
            cmd.Parameters.Add("doctor", MySqlDbType.Int32).Value = doctor;
            cmd.CommandType = CommandType.StoredProcedure;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }
    }
}
