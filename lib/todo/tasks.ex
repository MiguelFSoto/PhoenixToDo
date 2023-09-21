defmodule Todo.Tasks do
  alias Todo.Tasks.Task
  alias Todo.Repo
  import Ecto.Query

  def get_task(id) do
    Repo.get(Task, id)
  end

  def list_tasks() do
    Task
    |> order_by(desc: :id)
    |> Repo.all
  end

  def create_task(attrs) do
    %Task {}
    |> Task.changeset(attrs)
    |> Repo.insert
  end
end
