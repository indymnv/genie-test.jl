module Todos

import SearchLight: AbstractModel, DbId
import Base: @kwdef

using SearchLight
using TodoMVC.TodosValidator
import SearchLight.Validation: ModelValidator, ValidationRule

SearchLight.Validation.validator(::Type{Todo}) = ModelValidator([
  ValidationRule(:todo, TodosValidator.not_empty)
])


export Todo

@kwdef mutable struct Todo <: AbstractModel
  id::DbId = DbId()
  todo::String = "" 
  completed::Bool = false
end

end
