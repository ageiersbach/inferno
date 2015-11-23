defmodule Inferno.Repo.Migrations.CreateNote do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :title, :string
      add :body, :text
      add :sort_order, :integer

      timestamps
    end

  end
end
