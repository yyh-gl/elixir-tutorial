defmodule ExampleApiServer2.User do
  use ExampleApiServer2.Web, :model

  schema "users" do
    field :name, :string
    field :age, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :age])
    |> validate_required([:name, :age])
  end
end
