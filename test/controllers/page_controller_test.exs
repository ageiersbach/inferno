defmodule Inferno.PageControllerTest do
  use Inferno.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "" # this checks the title on the page, currently none
  end
end
