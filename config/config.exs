# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wabanex,
  ecto_repos: [Wabanex.Repo]

# Configures the endpoint
config :wabanex, WabanexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "f790ajr0dyXlw4fcb3DYvqjhivVpXmd591j6dhNx95b7Odn7CO1vnk7BkOcAlzKV",
  render_errors: [view: WabanexWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Wabanex.PubSub,
  live_view: [signing_salt: "+2sUVwqH"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
