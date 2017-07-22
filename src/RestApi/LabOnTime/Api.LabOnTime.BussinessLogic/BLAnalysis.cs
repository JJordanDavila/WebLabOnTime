using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLAnalysis
    {
        DAAnalysis daAnalysis = new DAAnalysis();

        public DataTable GetAnalysis (int filter)
        {
            return daAnalysis.GetAnalysis(filter);
        }
    }
}
