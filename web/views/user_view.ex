defmodule ExampleApiServer2.UserView do
  use ExampleApiServer2.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, ExampleApiServer2.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, ExampleApiServer2.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      age: user.age}
  end
end
