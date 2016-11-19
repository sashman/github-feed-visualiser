defmodule GithubFeedVisualiser.PageController do
  use GithubFeedVisualiser.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def push(conn, params) do

    GithubFeedVisualiser.Endpoint.broadcast("github_push:lobby", "new_push", params)

    conn
    |> send_resp(200, "Push data received")
  end
end
