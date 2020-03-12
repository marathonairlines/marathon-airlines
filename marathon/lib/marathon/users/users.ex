defmodule Marathon.Users do
  import Ecto.Query
  alias Marathon.User
  alias Marathon.Repo

  def get_user(id) do
    Repo.get(User, id)
  end

  def get_user!(id) do
    Repo.get!(User, id)
  end

  def get_user_by(params) do
    Repo.get_by(User, params)
  end

  def get_user_by!(params) do
    Repo.get_by!(User, params)
  end
end
