defmodule Petx.Repo.Migrations.CreatePets do
  use Ecto.Migration

  def change do
    create table(:pets, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :name, :string
      add :kind, :string
      add :weight, :float
      add :age, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
