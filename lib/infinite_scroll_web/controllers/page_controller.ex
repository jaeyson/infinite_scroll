defmodule InfiniteScrollWeb.PageController do
  use InfiniteScrollWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
