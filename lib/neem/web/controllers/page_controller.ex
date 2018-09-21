defmodule Neem.Web.PageController do
  import Assembly.Conn
  import Garuda.Controller

  def home(conn, message) do
    conn
    |> put_resp_body("<img src='/images/logo.png'/><h1>Home Page #{message}</h1>")
  end

  def about(conn, _) do
    conn
    |> put_resp_body("<img src='/images/logo.png'/><h1>About Page</h1>")
  end

  def contact(conn, _) do
    conn
    |> put_resp_body("<img src='/images/logo.png'/><h1>Contact Page</h1>")
  end

end
