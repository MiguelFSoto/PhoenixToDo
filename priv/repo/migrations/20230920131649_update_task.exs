defmodule Todo.Repo.Migrations.UpdateTask do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add :done, :boolean
    end
  end
end
