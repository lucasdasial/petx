defmodule Petx.Pet do
  use Ecto.Schema
  import Ecto.Changeset

  # TODO: estudar mais sobre ecto.query
  # https://elixirschool.com/en/lessons/ecto/querying_basics

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "pets" do
    field :age, :integer
    field :kind, :string
    field :name, :string
    field :weight, :float

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(pet_params) do
    %__MODULE__{}
    |> cast(pet_params,[:name, :kind, :weight, :age])
    |> validate_required([:name, :kind, :weight, :age])
    |> validate_number(:age, greater_than: 0)
    |> validate_number(:weight, greater_than: 0)
  end
end
