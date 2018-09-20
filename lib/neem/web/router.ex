defmodule Neem.Web.Router do
  import Assembly.Conn

  def call(conn) do
    content_for(conn.req_path, conn)
  end
  
  defp content_for("/", conn) do
    conn
    |> put_resp_body "<img src='/images/logo.png'/><h1>Home Page</h1>"
  end

  defp content_for("/contact", conn) do
    conn 
    |> put_resp_body "<img src='/images/logo.png'/><h1>Contact Page</h1>"
  end

  defp content_for("/about") do
    conn
    |> put_resp_body "<img src='/images/logo.png'/><h1>About Page</h1>"
  end

  defp content_for(_, conn) do
    conn
    |> put_resp_code(404)
    |> put_resp_body "<img src='/images/logo.png'/><h1>404 error</h1>"
  end
end
