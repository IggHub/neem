defmodule Neem.Web.ContactController do
  import Assembly.Conn
  use Garuda.Controller

  def contact(conn, message) do
    render(conn, "contact.html", message: message)
  end
end
