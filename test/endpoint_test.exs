defmodule Giacobot.EndpointTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts Giacobot.Endpoint.init([])

  test "GET / returns 200" do
    %{
      state: state,
      status: status,
    } =
      conn(:get, "/")
      |> Giacobot.Endpoint.call(@opts)

    assert state == :sent
    assert status == 200
  end

  test "GET * returns 404" do
    conn =
      conn(:get, "/xunda")
      |> Giacobot.Endpoint.call(@opts)

    assert conn.status == 404
  end
end
