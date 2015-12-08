defmodule Caracara.PageController do
  use Caracara.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
