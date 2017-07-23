using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Api.LabOnTime.Models.DTO
{
    public class CommentAnalysisDTO
    {
        public int id { get; set; }
        public int medicalAnalysisId { get; set; }
        public string description { get; set; }
        public string priority { get; set; }
        public DateTime? date { get; set; }
    }
}