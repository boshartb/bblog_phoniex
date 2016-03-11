ExUnit.start

Mix.Task.run "ecto.create", ~w(-r BblogPhoenix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r BblogPhoenix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(BblogPhoenix.Repo)

