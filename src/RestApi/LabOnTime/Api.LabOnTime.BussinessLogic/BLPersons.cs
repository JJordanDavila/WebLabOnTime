using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLPersons
    {
        DAPersons daPerson = new DAPersons();

        public DataTable GetPersons (int filter)
        {
            return daPerson.GetPersons(filter);
        }
    }
}
