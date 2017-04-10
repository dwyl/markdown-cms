# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :markdown_cms,
  ecto_repos: [MarkdownCms.Repo]

# Configures the endpoint
config :markdown_cms, MarkdownCms.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "INscwmB9TLO9YI8JjcQcwO2iSZDhViTmauQWicP6pq4jWAOxhDfhP0elYKPD5PUC",
  render_errors: [view: MarkdownCms.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MarkdownCms.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
