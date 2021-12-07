using Backend.Data;
using Backend.Models;
using Microsoft.EntityFrameworkCore;

namespace Backend.Repositories
{
    public class TodoRepository : ITodoRepository
    {
        private readonly DataContext _context;

        public TodoRepository(DataContext context) => _context = context;

        public async Task Create(TodosModel model)
        {
            _context.Todos.Add(model);
            await _context.SaveChangesAsync();
        }

        public async Task Delete(int id)
        {
            var todoToDelete = await _context.Todos.FindAsync(id);

            if (todoToDelete == null)
                throw new NullReferenceException();

            _context.Todos.Remove(todoToDelete);
            await _context.SaveChangesAsync();
        }

        public async Task<TodosModel> Get(int id)
        {
            return await _context.Todos.FindAsync(id);
        }

        public async Task<IEnumerable<TodosModel>> GetAll()
        {
            return await _context.Todos.ToListAsync();
        }

        public async Task Update(TodosModel model)
        {
            var todoToUpdate = await _context.Todos.FindAsync(model.Id);

            if (todoToUpdate == null)
                throw new NullReferenceException();

            todoToUpdate.Name = model.Name;
            todoToUpdate.Completed = model.Completed;
            todoToUpdate.UpdatedAt = DateTime.Now;

            await _context.SaveChangesAsync();
        }
    }
}
