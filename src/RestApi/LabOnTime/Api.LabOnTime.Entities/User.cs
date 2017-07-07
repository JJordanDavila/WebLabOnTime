namespace Api.LabOnTime.Entities
{
    public class User
    {
        public int id { get; set; }
        public int roles_id { get; set; }
        public int persons_id { get; set; }
        public string name { get; set; }
        public string password { get; set; }
        public bool active { get; set; }
    }
}
