using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Api.LabOnTime.Models.Request
{
    public class RequestValidateUser
    {
        public string User { get; set; }
        public string Password { get; set; }
    }
}