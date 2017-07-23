using Api.LabOnTime.DataAccess;
using System.Data;
using System;

namespace Api.LabOnTime.BussinessLogic
{
    public class BLCommentAnalysis
    {
        DACommentAnalysis daCommentAnalysis = new DACommentAnalysis();

        public int InsertCommentAnalysis(int medicalAnalysisId, string description, string priority)
        {
            return daCommentAnalysis.InsertCommentAnalysis(medicalAnalysisId,description, priority);
        }
    }
}
