using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLPatients
    {
        DAPatients daPatient = new DAPatients();

        public DataTable GetPatients(int filter)
        {
            return daPatient.GetPatients(filter);
        }
    }
}
