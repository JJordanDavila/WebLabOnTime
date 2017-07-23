using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System;


namespace Api.LabOnTime.DataAccess
{
    public class DACommentAnalysis
    {
        private string conexionString = ConfigurationManager.ConnectionStrings["MySqlConn"].ToString();
        public int InsertCommentAnalysis(int medicalAnalysisId, string description, string priority)
        {
            MySqlConnection cnn = new MySqlConnection(conexionString);
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter();
            cmd = new MySqlCommand("USP_InsertCommentAnalysis", cnn);
            cmd.Parameters.Add("medicalAnalysisId", MySqlDbType.Int32).Value = medicalAnalysisId;
            cmd.Parameters.Add("description", MySqlDbType.VarChar).Value = description;
            cmd.Parameters.Add("priority", MySqlDbType.VarChar).Value = priority;
            cmd.CommandType = CommandType.StoredProcedure;
            cnn.Open();
            int query = cmd.ExecuteNonQuery();
            cnn.Close();
            return query;
        }
    }
}
