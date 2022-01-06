defmodule Piyopiyoex3SamplePortfolioWeb.PageController do
  use Piyopiyoex3SamplePortfolioWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
