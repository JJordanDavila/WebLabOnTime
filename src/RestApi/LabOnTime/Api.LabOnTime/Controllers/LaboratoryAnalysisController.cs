using Api.LabOnTime.BussinessLogic;
using Api.LabOnTime.Models;
using Api.LabOnTime.Models.DTO;
using System;
using System.Data;
using System.Net;
using System.Net.Http;
using System.Web.Http;
namespace Api.LabOnTime.Controllers
{
    public class LaboratoryAnalysisController : ApiController
    {
        BLLaboratoryAnalysis bl = new BLLaboratoryAnalysis();

        [HttpGet]
        public IHttpActionResult GetLaboratoryAnalysis(int laboratorio, int analisis, int paciente, int doctor)
        {
            var dt = bl.GetLaboratoryAnalysis(laboratorio, analisis, paciente, doctor);

            LaboratoryAnalysisModels laboratoryAnalysisModel = new LaboratoryAnalysisModels();
            foreach (DataRow row in dt.Rows)
            {
                LaboratoryAnalysisDTO laboratoryAnalysis = new LaboratoryAnalysisDTO
                {
                    id_medical_analisis = int.Parse(row["id_medical_analisis"].ToString()),
                    id_request_analisis = int.Parse(row["id_request_analisis"].ToString()),
                    resultado_laboratorio = row["resultado_laboratorio"].ToString(),
                    status_laboratorio= row["status_laboratorio"].ToString(),
                    motivo_consulta_paciente = row["motivo_consulta_paciente"].ToString(),
                    id_laboratorio = int.Parse(row["id_laboratorio"].ToString()),
                    nombre_laboratorio = row["nombre_laboratorio"].ToString(),
                    id_analisis = int.Parse(row["id_analisis"].ToString()),
                    tipo_analisis = row["tipo_analisis"].ToString(),
                    id_paciente = int.Parse(row["id_paciente"].ToString()),
                    nombres_paciente = row["nombres_paciente"].ToString(),
                    id_doctor = int.Parse(row["id_doctor"].ToString()),
                    nombres_doctor = row["nombres_doctor"].ToString()

                };
                laboratoryAnalysisModel.laboratoryAnalysis.Add(laboratoryAnalysis);
            }

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(laboratoryAnalysisModel);
        }
    }
}