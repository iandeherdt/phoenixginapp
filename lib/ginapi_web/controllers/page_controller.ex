defmodule GinapiWeb.PageController do
  use GinapiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
