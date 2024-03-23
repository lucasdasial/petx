defmodule Petx.Repo do
  use Ecto.Repo,
    otp_app: :petx,
    adapter: Ecto.Adapters.Postgres
end
