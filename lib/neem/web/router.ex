defmodule Neem.Web.Router do
  import Assembly.Conn
  alias Neem.Web.PageController

  def call(conn) do
    content_for(conn.req_path, conn)
  end
  
  defp content_for("/", conn) do
    conn
    |> PageController.call(:home)
  end

  defp content_for("/contact", conn) do
    conn 
    |> PageController.call(:contact) 
  end

  defp content_for("/about") do
    conn
    |> PageController.call(:about) 
  end

  defp content_for(_, conn) do
    conn
    |> put_resp_code(404)
    |> put_resp_body "<img src='/images/logo.png'/><h1>404 error</h1>"
  end
end
