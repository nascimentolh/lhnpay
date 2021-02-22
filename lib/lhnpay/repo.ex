defmodule Lhnpay.Repo do
  use Ecto.Repo,
    otp_app: :lhnpay,
    adapter: Ecto.Adapters.Postgres
end
