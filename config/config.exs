# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :github_feed_visualiser, GithubFeedVisualiser.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RytiM4liYSDQgB87nbAME3QhRLjWvwh63LNkxcVjNQrG+SmWicNCpkBXyrNUZExa",
  render_errors: [view: GithubFeedVisualiser.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GithubFeedVisualiser.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
