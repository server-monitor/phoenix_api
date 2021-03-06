use Mix.Config

# ... put in front so it can be overridden if need be.
import_config "SECRET_DO_NOT_GIT.exs"

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :phoenix_api, PhoenixAPI.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []


# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :phoenix_api, PhoenixAPI.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "phoenix",
  password: "phoenix",
  database: "phoenix_api_dev",
  hostname: "localhost",
  pool_size: 10
