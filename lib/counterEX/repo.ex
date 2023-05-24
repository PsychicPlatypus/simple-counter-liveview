defmodule CounterEX.Repo do
  use Ecto.Repo,
    otp_app: :counterEX,
    adapter: Ecto.Adapters.Postgres
end
