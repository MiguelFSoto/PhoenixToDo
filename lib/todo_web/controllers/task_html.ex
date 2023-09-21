defmodule TodoWeb.TaskHTML do
  use TodoWeb, :html
  import Phoenix.HTML.Form
  alias TodoWeb.Router, as: Routes
  embed_templates "task_html/*"
end
