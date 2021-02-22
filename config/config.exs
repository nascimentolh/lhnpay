# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lhnpay,
  ecto_repos: [Lhnpay.Repo]

# Configures the endpoint
config :lhnpay, LhnpayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OzQ4mkNKB7R1BBZCo8UrOP1/aYKiQ0ekGlFyJ2i0GGzvpVa3M2KfmAx3D9zLX129",
  render_errors: [view: LhnpayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Lhnpay.PubSub,
  live_view: [signing_salt: "uHKAUw3j"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
