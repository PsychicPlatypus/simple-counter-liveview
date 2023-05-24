defmodule CounterEXWeb.PageController do
  use CounterEXWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
