defmodule GithubFeedVisualiser.PageController do
  use GithubFeedVisualiser.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def push(conn, params) do
    IO.inspect params
    conn
    |> send_resp(200, "Push data received")
  end
end
