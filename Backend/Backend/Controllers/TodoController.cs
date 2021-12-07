using Backend.Models;
using Backend.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace Backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TodoController : ControllerBase
    {
        private readonly ITodoRepository _todoRepository;

        public TodoController(ITodoRepository todoRepository) => _todoRepository = todoRepository;

        /// <summary>
        /// Retorna todos os TODOs
        /// </summary>
        // GET: api/<TodoController>
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TodosModel>>> GetAll()
        {
            var todos = await _todoRepository.GetAll();
            return Ok(todos);
        }

        /// <summary>
        /// Retorna um TODO por ID
        /// </summary>
        // GET api/<TodoController>/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TodosModel>> Get(int id)
        {
            var todo = await _todoRepository.Get(id);
            
            if(todo == null)
                return NotFound();

            return Ok(todo);
        }

        /// <summary>
        /// Cria um TODO
        /// </summary>
        // POST api/<TodoController>
        [HttpPost]
        public async Task<ActionResult<TodoCreateModel>> Post([FromBody] TodoCreateModel model)
        {
            TodosModel todo = new()
            {
                Name = model.Name,
                Completed = false,
                InsertedAt = DateTime.Now
            };

            await _todoRepository.Create(todo);
            return Ok();
        }

        /// <summary>
        /// Atualiza um TODO por ID
        /// </summary>
        // PUT api/<TodoController>/5
        [HttpPut("{id}")]
        public async Task<ActionResult<TodoUpdateModel>> Put([FromBody] TodoUpdateModel model, int id)
        {
            if (string.IsNullOrWhiteSpace(model.Name))
                return BadRequest();

            TodosModel todo = new()
            {
                Id = id,
                Name = model.Name,
                Completed = model.Completed
            };

            await _todoRepository.Update(todo);
            return Ok();
        }

        /// <summary>
        /// Remove um TODO por ID
        /// </summary>
        // DELETE api/<TodoController>/5
        [HttpDelete("{id}")]
        public async Task<ActionResult> Delete(int id)
        {
            await _todoRepository.Delete(id);
            return Ok();
        }
    }
}
