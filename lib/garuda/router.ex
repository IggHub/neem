defmodule Garuda.Router do
  defmacro __using__(_opts) do
    quote do
      def call(conn) do
        content_for(conn.req_path, conn)
      end
    end
  end
end
