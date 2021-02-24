defmodule Lhnpay do
  alias Lhnpay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
