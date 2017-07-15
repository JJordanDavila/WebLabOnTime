using Api.LabOnTime.DataAccess;
using System.Data;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLLaboratorys
    {
        DALaboratorys daLaboratory = new DALaboratorys();
        public DataTable GetLabortorys (int filter)
        {
            return daLaboratory.GetLaboratorys(filter);
        }
    }
}
