defmodule Caracara.Router do
  use Caracara.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Caracara do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  resources "/posts", PostController

  # Other scopes may use custom stacks.
  # scope "/api", Caracara do
  #   pipe_through :api
  # end
end
