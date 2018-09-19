defmodule Neem.Web.PageHandler do
  def init({:tcp, :http}, req, _opts) do
   {:ok, req, :nostate}
  end

  def handle(req, _state) do
   headers = [{"content-type", "text/html"}]
   { path, req } = :cowboy_req.path(req)
   {:ok, resp} = :cowboy_req.reply(200, headers, content_for(path), req)
   {:ok, resp, :nostate}
  end

  def terminate(_reason, _req, _state) do
   :ok
  end

  defp content_for("/") do
    "<img src='/images/logo.png'/><h1>Home Page</h1>"
  end

  defp content_for("/contact") do
    "<img src='/images/logo.png'/><h1>Contact Page</h1>"
  end

  defp content_for("/about") do
    "<img src='/images/logo.png'/><h1>About Page</h1>"
  end

  defp content_for(_) do
    "<img src='/images/logo.png'/><h1>404 error</h1>"
  end
end
