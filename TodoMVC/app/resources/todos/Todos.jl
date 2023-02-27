module Todos

import SearchLight: AbstractModel, DbId
import Base: @kwdef

export Todo

@kwdef mutable struct Todo <: AbstractModel
  id::DbId = DbId()
end

end
