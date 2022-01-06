defmodule Piyopiyoex3SamplePortfolio.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Piyopiyoex3SamplePortfolioWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Piyopiyoex3SamplePortfolio.PubSub},
      # Start the Endpoint (http/https)
      Piyopiyoex3SamplePortfolioWeb.Endpoint
      # Start a worker by calling: Piyopiyoex3SamplePortfolio.Worker.start_link(arg)
      # {Piyopiyoex3SamplePortfolio.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Piyopiyoex3SamplePortfolio.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Piyopiyoex3SamplePortfolioWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
