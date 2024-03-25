defmodule PetxWeb.HelloController do
  use PetxWeb, :controller

  def index(conn, _p) do
    conn |> render(:index)
  end
end
