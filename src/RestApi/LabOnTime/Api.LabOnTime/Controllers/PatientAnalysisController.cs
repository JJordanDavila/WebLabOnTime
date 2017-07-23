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
    public class PatientAnalysisController: ApiController
    {
        BLPatientAnalysis bl = new BLPatientAnalysis();

        [HttpGet]
        public IHttpActionResult GetPatientAnalysis(int paciente)
        {
            var dt = bl.GetPatientAnalysis(paciente);

            PatientAnalysisModel patientAnalysisModel = new PatientAnalysisModel();
            foreach (DataRow row in dt.Rows)
            {
                PatientAnalysisDTO patientAnalysis = new PatientAnalysisDTO
                {
                    id_medical_analisis = int.Parse(row["id_medical_analisis"].ToString()),
                    id_request_analisis = int.Parse(row["id_request_analisis"].ToString()),
                    resultado_laboratorio = row["resultado_laboratorio"].ToString(),
                    status_medical_analisis = row["status_medical_analisis"].ToString(),
                    diagnostico_medico = row["diagnostico_medico"].ToString(),
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
                patientAnalysisModel.patientAnalysisModel.Add(patientAnalysis);
            }

            if (dt == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return Json(patientAnalysisModel);
        }
    }
}