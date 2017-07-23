using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLPatientAnalysis
    {
        DAPatientAnalysis daPatientAnalysis = new DAPatientAnalysis();

        public DataTable GetPatientAnalysis(int paciente)
        {
            return daPatientAnalysis.GetPatientAnalysis(paciente);
        }
    }
}
