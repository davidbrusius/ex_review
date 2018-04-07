# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ex_review,
  ecto_repos: [ExReview.Repo]

# Configures the endpoint
config :ex_review, ExReviewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "y2E2PoYXGixs1P/ySqKy0Jf5t1roFHIdltbvqgcPB8coKMKbNfdXaVf3j6VB0BMV",
  render_errors: [view: ExReviewWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExReview.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
