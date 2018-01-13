# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ginapi,
  ecto_repos: [Ginapi.Repo]

# Configures the endpoint
config :ginapi, GinapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8T8NppVqH28o5Ph5zIgCRxON8ine3zL/sZ/ozAzAK5f5vm7sHkjCjK6N75MBFri0",
  render_errors: [view: GinapiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ginapi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
