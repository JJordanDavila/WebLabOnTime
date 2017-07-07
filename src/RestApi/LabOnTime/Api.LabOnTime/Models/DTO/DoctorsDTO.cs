namespace Api.LabOnTime.Models.DTO
{
    public class DoctorsDTO
    {
        public int id { get; set; }
        public int personsid { get; set; }
        public string doctornumber { get; set; }
        public string speciality { get; set; }
        public bool active { get; set; }
        public int idPerson { get; set; }
        public string names { get; set; }
        public string lastnames { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string documentnumber { get; set; }
        public string ruc { get; set; }
        public string type { get; set; }
        public string bussinessname { get; set; }
    }
}