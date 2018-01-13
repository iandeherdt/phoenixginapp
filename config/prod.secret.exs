use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :ginapi, GinapiWeb.Endpoint,
  secret_key_base: "/HmNDWuolVBitDcTrdeobk4hkGbni6gWZ+kWbByw651j2192FcV5Rh+pzUgmuCnK"

# Configure your database
config :ginapi, Ginapi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ginapi_prod",
  pool_size: 15
