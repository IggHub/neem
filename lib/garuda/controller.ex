defmodule Garuda.Controller do

  defmacro __using__(_opts) do
    quote do
      def call(conn, action) do
        apply(__MODULE__, action, [conn, "Hello from Controller"])
      end

      defoverridable [call: 2]

      # Move the function from PageController here.
      def render(conn, template, assigns) do
        view_name = __MODULE__
                    |> Atom.to_string
                    |> String.trim_trailing("Controller")
                    |> Kernel.<>("View")
        view_module = Module.concat(Elixir, view_name)
        body = view_module.render(template, assigns)
        put_resp_body(conn, body)
      end
    end
  end
end
