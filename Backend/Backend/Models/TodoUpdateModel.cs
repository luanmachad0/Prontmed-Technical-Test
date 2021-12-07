namespace Backend.Models
{
    public class TodoUpdateModel
    {
        /// <summary>
        /// Nome do TODO. Se for vazio, não atualizar o recurso no banco
        /// </summary>
        public string? Name { get; set; }
        /// <summary>
        /// TODO completo?
        /// </summary>
        public bool Completed { get; set; }
    }
}
