using Api.LabOnTime.DataAccess;
using Api.LabOnTime.Entities;
using System.Data;
namespace Api.LabOnTime.BussinessLogic
{
    public class BLCommentAnalysis
    {
        DACommentAnalysis daCommentAnalysis = new DACommentAnalysis();

        public ResponseBD InsertCommentAnalysis(int medicalAnalysisId, string description, string priority)
        {
            return daCommentAnalysis.InsertCommentAnalysis(medicalAnalysisId,description, priority);
        }
    }
}
