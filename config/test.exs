use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :example_api_server2, ExampleApiServer2.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :example_api_server2, ExampleApiServer2.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "example_api_server2_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
