defmodule ExSync.Mixfile do
  use Mix.Project

  @source_url "https://github.com/abs/exsync"
  @version "0.5.0"

  def project do
    [
      app: :exsynchro,
      version: @version,
      elixir: "~> 1.11",
      elixirc_paths: ["lib", "web"],
      deps: deps(),
      description: "Elixir code reloader. Maintained fork of exsync.",
      source_url: @source_url,
      homepage_url: @source_url,
      package: package(),
      docs: docs()
    ]
  end

  def application do
    [
      mod: {ExSync.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:file_system, "~> 1.0 or ~> 0.2"}
    ]
  end

  defp package do
    %{
      maintainers: ["Xiangrong Hao", "Jason Axelson", "Andrei Soroker"],
      licenses: ["BSD-3-Clause"],
      links: %{
        "GitHub" => "https://github.com/abs/exsync",
        "Original" => "https://github.com/falood/exsync"
      }
    }
  end

  defp docs do
    [
      extras: [
        "README.md": [],
        "CHANGELOG.md": [],
        LICENSE: [title: "License"]
      ],
      main: "readme",
      source_ref: "v#{@version}"
    ]
  end
end
