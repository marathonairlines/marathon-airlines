defmodule MarathonWeb.PageController do
  use MarathonWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
