defmodule Inferno.NoteController do
  use Inferno.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
