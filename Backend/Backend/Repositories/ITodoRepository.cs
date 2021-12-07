using Backend.Models;

namespace Backend.Repositories
{
    public interface ITodoRepository
    {
        Task<TodosModel> Get(int id);
        Task<IEnumerable<TodosModel>> GetAll();
        Task Create(TodosModel model);
        Task Update(TodosModel model);
        Task Delete(int id);
    }
}
