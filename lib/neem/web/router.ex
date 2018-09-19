defmodule Neem.Web.Router do
  def call(path) do
    content_for(path)
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
