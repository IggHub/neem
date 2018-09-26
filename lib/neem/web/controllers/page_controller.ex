defmodule Neem.Web.PageController do
  import Assembly.Conn
  use Garuda.Controller

  def home(conn, message) do
    render(conn, "home.html", message: message)
  end

  def about(conn, _) do
    render(conn, "about.html", nil)
  end
end
