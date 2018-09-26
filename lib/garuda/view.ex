defmodule Garuda.View do
  defmacro __using__(opts) do
    quote do
      def render("about.html", assigns) do
        "Hello about"
      end

      def render("home.html", assigns) do
        "Hello home"
      end
    end
  end
end
