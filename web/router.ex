defmodule ExampleApiServer2.Router do
  use ExampleApiServer2.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ExampleApiServer2 do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
