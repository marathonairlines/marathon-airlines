defmodule Marathon.Repo do
  use Ecto.Repo,
    otp_app: :marathon,
    adapter: Ecto.Adapters.Postgres
end
