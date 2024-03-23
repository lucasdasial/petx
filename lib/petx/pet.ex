defmodule Petx.Pet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pets" do
    field :age, :integer
    field :kind, :string
    field :name, :string
    field :weight, :float

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(pet, attrs) do
    pet
    |> cast(attrs, [:name, :kind, :weight, :age])
    |> validate_required([:name, :kind, :weight, :age])
    |> validate_number(:age, greater_than: 0)
    |> validate_number(:weight, greater_than: 0)
  end
end
