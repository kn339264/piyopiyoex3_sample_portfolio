import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :piyopiyoex3_sample_portfolio, Piyopiyoex3SamplePortfolioWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qFwSW7F6Ujkq6sJwMo+SydlEq+BcQEChSj03+wf/56/+/713Bp5SjMHSFhKkpNnL",
  server: false

# In test we don't send emails.
config :piyopiyoex3_sample_portfolio, Piyopiyoex3SamplePortfolio.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
