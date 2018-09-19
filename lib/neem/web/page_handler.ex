defmodule Neem.Web.PageHandler do
  # req maps to handle's req, action maps to handle's state
  def init({:tcp, :http}, req, action) do
   {:ok, req, action}
  end

  def handle(req, state) do
   headers = [{"content-type", "text/html"}]

   {:ok, resp} = :cowboy_req.reply(200, headers, content_for(state), req)
   {:ok, resp, state}
  end

  def terminate(_reason, _req, _state) do
   :ok
  end

  # body content for different actions
  defp content_for(:home) do
    "<img src='/images/logo.png' /><h1>Home Page</h1>"
  end

  defp content_for(:contact) do
    "<img src='/images/logo.png' /><h1>Contact Page</h1>"
  end

  defp content_for(:about) do
    "<img src='/images/logo.png' /><h1>About Page</h1>"
  end

  defp content_for(_) do
    "<img src='/images/logo.png' /><h1>404 error</h1>"
  end
end
