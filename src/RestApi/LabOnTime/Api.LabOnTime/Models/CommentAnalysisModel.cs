using Api.LabOnTime.Models.DTO;
using System.Collections.Generic;

namespace Api.LabOnTime.Models
{
    public class CommentAnalysisModel
    {
        public CommentAnalysisModel()
        {
            commentAnalysisModel = new List<CommentAnalysisDTO>();
        }
        public List<CommentAnalysisDTO> commentAnalysisModel { get; set; }
    }
}