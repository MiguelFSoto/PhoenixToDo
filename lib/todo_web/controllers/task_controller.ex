defmodule TodoWeb.TaskController do
  use TodoWeb, :controller
  alias Todo.Tasks
  def index(conn, _params) do
    data = Tasks.list_tasks()
    render(conn, :index, data: data)
  end
end
