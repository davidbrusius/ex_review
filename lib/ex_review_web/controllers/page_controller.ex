defmodule ExReviewWeb.PageController do
  use ExReviewWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
