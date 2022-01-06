defmodule Piyopiyoex3SamplePortfolioWeb.PortfolioLive.Index do
  use Piyopiyoex3SamplePortfolioWeb, :live_view

  #alias Piyopiyoex3SamplePortfolio.Portfolios
  #alias Piyopiyoex3SamplePortfolio.Portfolios.Portfolio

  @impl true
  def mount(_params, _session, socket) do
    # {:ok, assign(socket, :portfolios, list_portfolios())}
    {:ok, socket}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  # defp apply_action(socket, :edit, %{"id" => id}) do
  #   socket
  #   |> assign(:page_title, "Edit Portfolio")
  #   |> assign(:portfolio, Portfolios.get_portfolio!(id))
  # end

  # defp apply_action(socket, :new, _params) do
  #   socket
  #   |> assign(:page_title, "New Portfolio")
  #   |> assign(:portfolio, %Portfolio{})
  # end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Portfolios")
    #|> assign(:portfolio, nil)
  end

  # @impl true
  # def handle_event("delete", %{"id" => id}, socket) do
  #   portfolio = Portfolios.get_portfolio!(id)
  #   {:ok, _} = Portfolios.delete_portfolio(portfolio)

  #   {:noreply, assign(socket, :portfolios, list_portfolios())}
  # end

  # defp list_portfolios do
  #   Portfolios.list_portfolios()
  # end
end
