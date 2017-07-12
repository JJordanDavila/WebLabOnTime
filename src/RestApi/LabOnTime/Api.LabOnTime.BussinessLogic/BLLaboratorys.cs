using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLLaboratorys
    {
        DALaboratorys daLaboratory = new DALaboratorys();
        public DataTable GetLabortory (int filter)
        {
            return daLaboratory.GetLaboratorys(filter);
        }
    }
}
