defmodule TodoWeb.TaskController do
  use TodoWeb, :controller
  alias Todo.Tasks
  alias Todo.Tasks.Task

  def index(conn, _params) do
    data = Tasks.list_tasks()
    changeset = Task.changeset(%Task{}, %{})
    render(conn, :index, data: data, changeset: changeset)
  end

  def create(conn, %{"task" => params}) do
    Tasks.create_task(params)
    redirect(conn, to: "/tasks")
  end
end
