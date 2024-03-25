defmodule PetxWeb.HelloController do
  use PetxWeb, :controller

  def index(conn, _p) do
    conn |> render(:index)
  end

  def show(conn, params) do
    inspect params
    conn |> render(:show, message: params["message"])
  end
end
