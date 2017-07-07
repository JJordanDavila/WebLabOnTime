using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLDoctors
    {
        DADoctors daDoctor = new DADoctors();

        public DataTable GetDoctors(int filter)
        {
            return daDoctor.GetDoctors(filter);
        }
    }
}
