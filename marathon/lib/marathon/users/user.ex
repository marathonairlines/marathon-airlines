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

  defp put_pwd_hash(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: pass}} ->
        put_change(changeset, :password_hash, Pbkdf2.hash_pwd_salt(pass))

      _->
        changeset
    end
  end
end
