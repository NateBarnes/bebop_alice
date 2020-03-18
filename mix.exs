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
            Alice.Handlers.GoodMorningLanguages
          ]
        }
      }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:alice,              "~> 0.3.7"},
      {:alice_roller,       "~> 0.2"},
      {:alice_good_morning, "~> 1.0"}
    ]
  end
end
