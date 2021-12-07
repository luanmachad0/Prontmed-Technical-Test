namespace Backend.Models
{
    public class TodosModel
    {
        /// <summary>
        /// Id do objeto todo
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Nome do TODO
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// TODO completo?
        /// </summary>
        public bool Completed { get; set; }
        /// <summary>
        /// Data que foi inserido
        /// </summary>
        public DateTime InsertedAt { get; set; }
        /// <summary>
        /// Data da última atualização
        /// </summary>
        public DateTime UpdatedAt { get; set; }
    }
}
