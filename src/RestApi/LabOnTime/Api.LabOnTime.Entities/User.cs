namespace Api.LabOnTime.Entities
{
    public class User
    {
        public int id { get; set; }
        public int roles_id { get; set; }
        public string description { get; set; }
        public int persons_id { get; set; }
        public string name { get; set; }
        public string password { get; set; }
        public string names { get; set; }
        public string lastnames { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string documentnumber { get; set; }
        public string ruc { get; set; }
        public string type { get; set; }
        public string bussinessname { get; set; }
        public string doctornumber { get; set; }
        public string speciality { get; set; }
    }
}
