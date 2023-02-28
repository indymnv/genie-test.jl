using Genie
using TodoMVC.TodosController
route("/", TodosController.index)
route("/todos", TodosController.create, method = POST)
