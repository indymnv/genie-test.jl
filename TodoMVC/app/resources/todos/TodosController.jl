module TodosController
using TodoMVC.Todos
#using Genie.Renderers, 
using Genie.Renderers.Html
using Genie.Router
using SearchLight
using SearchLight.Validation

function index()
  html(:todos, :index; todos=all(Todo))
end

function create()
  
  todo = Todo(todo = params(:todo)) # 1

  validator = validate(todo)
  if haserrors(validator)
     return redirect("/?error=$(errors_to_string(validator))")
  end

  if save(todo)                        # 2
    redirect("/?success=Todo created") # 3
  else
    redirect("/?error=Could not save todo&todo=$(params(:todo))")
  end
end

end
