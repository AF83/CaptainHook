defmodule CaptainHook.Mixfile do
  use Mix.Project

  def project do
    [app: :captain_hook,
     version: "0.0.1",
     elixir: "~> 0.14.1",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:cowboy, :plug]]
  end

  # Dependencies can be hex.pm packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:cowboy, github: "extend/cowboy"},
      { :uuid,  github: "travis/erlang-uuid" },
      {:plug, "~> 0.5"},
    ]
  end
end
