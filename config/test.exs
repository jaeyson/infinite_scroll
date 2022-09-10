import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :infinite_scroll, InfiniteScrollWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "DktvG/i+WJodfVim26QmNb6bBoPet2gFJhwHfqGZeQ4052N/BGoopSPnDL2vV64i",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
