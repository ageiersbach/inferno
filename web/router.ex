defmodule Inferno.Router do
  use Inferno.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Inferno do
    pipe_through :api

    resources "/notes", NoteController, only: [:update, :create]
  end

  scope "/", Inferno do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/notes", NoteController, only: [:index, :show, :new, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Inferno do
  #   pipe_through :api
  # end
end
