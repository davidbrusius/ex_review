defmodule ExReviewWeb.PageControllerTest do
  use ExReviewWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "ExReview"
  end
end
