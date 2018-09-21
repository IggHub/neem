defmodule Neem.Web.Router do
  use Garuda.Router
  import Assembly.Conn

  alias Neem.Web.PageController
  alias Neem.Web.ContactController
  
  defp content_for("/", conn) do
    conn
    |> PageController.call(:home)
  end

  defp content_for("/contact", conn) do
    conn
    |> ContactController.call(:contact)
  end

  defp content_for("/about", conn) do
    conn
    |> PageController.call(:about)
  end

  defp content_for(_, conn) do
    conn
    |> put_resp_code(404)
    |> put_resp_body("<img src='/images/logo.png'/><h1>404 error</h1>")
  end
end
