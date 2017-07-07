using Api.LabOnTime.Entities;

namespace Api.LabOnTime.Models
{
    public class LoginModel
    {
        public LoginModel()
        {
            user = new User();
        }
        public User user { get; set; }
    }
}