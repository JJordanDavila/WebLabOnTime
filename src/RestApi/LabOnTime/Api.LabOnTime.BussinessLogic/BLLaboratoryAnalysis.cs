using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLLaboratoryAnalysis
    {
        DALaboratoryAnalysis daLaboratoryAnalysis = new DALaboratoryAnalysis();

        public DataTable GetLaboratoryAnalysis(int laboratorio, int analisis, int paciente, int doctor)
        {
            return daLaboratoryAnalysis.GetLaboratoryAnalysis(laboratorio, analisis, paciente, doctor);
        }
    }
}
