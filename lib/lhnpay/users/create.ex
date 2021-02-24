defmodule Lhnpay.Users.Create do
  alias Lhnpay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
