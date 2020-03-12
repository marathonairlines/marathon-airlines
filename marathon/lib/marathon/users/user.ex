defmodule Marathon.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  def changeset(user,attrs) do
    user
    |> cast(asttrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
