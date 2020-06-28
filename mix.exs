defmodule BebopAlice.MixProject do
  use Mix.Project

  def project do
    [
      app: :bebop_alice,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:alice],
      mod: {
        Alice, %{
          handlers: [
            Alice.Handlers.Roller,
            Alice.Handlers.GoodMorningLanguages,
            Alice.Handlers.Karma,
            Alice.Handlers.Jedi
          ]
        }
      }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:alice,              "~> 0.4.3", override: true},
      {:alice_roller,       "~> 0.3.0"},
      {:alice_good_morning, "~> 1.0"},
      {:alice_karma,        "~> 0.3.5"},
      {:jedi_alice,         "~> 0.1.1"}
    ]
  end
end
