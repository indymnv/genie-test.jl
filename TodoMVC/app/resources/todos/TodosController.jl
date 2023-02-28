module TodosController
using TodoMVC.Todos
using Genie.Renderers, Genie.Renderers.Html
using Genie.Router
using SearchLight

function index()
  html(:todos, :index; todos=all(Todo))
end

function create()
  todo = Todo(todo = params(:todo))        # 1
  if save(todo)                        # 2
    redirect("/?success=Todo created") # 3
  else
    redirect("/?error=Could not save
              todo&todo=$(params(:todo))")
  end
end

end
