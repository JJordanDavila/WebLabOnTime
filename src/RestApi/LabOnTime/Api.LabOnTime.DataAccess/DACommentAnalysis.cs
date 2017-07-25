using Api.LabOnTime.Entities;
using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;



namespace Api.LabOnTime.DataAccess
{
    public class DACommentAnalysis
    {
        private string conexionString = ConfigurationManager.ConnectionStrings["MySqlConn"].ToString();
        public ResponseBD InsertCommentAnalysis(int medicalAnalysisId, string description, string priority)
        {
            var response = new ResponseBD();
            try
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
            response.estado = true;
            }
            catch (Exception ex)
            {
                response.estado = false;
                response.mensaje = "Ocurrio un problema en el servicio.";
            }
            return response;
        }
    }
}
