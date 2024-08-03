defmodule Spawn.MixProject do
  use Mix.Project

  Code.require_file("internal_versions.exs", "./priv")

  @app :spawn
  @version "1.0.0-rc.18"
  @site "https://eigr.io/"
  @source_url "https://github.com/eigr/spawn"

  def project do
    [
      app: @app,
      version: @version,
      description: "Spawn is the core lib for Spawn Actors System",
      source_url: @source_url,
      homepage_url: @site,
      build_path: "_build",
      config_path: "config/config.exs",
      deps_path: "deps",
      lockfile: "mix.lock",
      elixir: "~> 1.14",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs(),
      aliases: [
        publish: &InternalVersions.publish/1,
        rewrite_versions: &InternalVersions.rewrite_versions/1
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :logger,
        :retry,
        :opentelemetry_exporter,
        :opentelemetry
      ]
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "priv", "README.md", "LICENSE"],
      licenses: ["Apache-2.0"],
      links: %{GitHub: @source_url, Site: @site}
    ]
  end

  defp docs do
    [
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      formatter_opts: [gfm: true],
      extras: [
        "README.md"
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Core deps
      {:decimal, "~> 2.0"},
      {:decorator, "~> 1.4"},
      {:nebulex, "~> 2.5"},
      {:shards, "~> 1.1"},
      {:telemetry, "~> 1.0"},
      {:castore, "~> 1.0"},
      {:protobuf, "~> 0.11"},
      {:finch, "~> 0.16"},
      {:retry, "~> 0.17"},
      {:tesla, "~> 1.6"},
      {:k8s, "~> 2.2"},
      {:k8s_webhoox, "~> 0.2"},
      {:flow, "~> 1.2"},
      {:vapor, "~> 0.10"},
      {:libcluster, "~> 3.3"},
      {:horde, "~> 0.8"},
      {:highlander, "~> 0.2.1"},
      {:phoenix_pubsub, "~> 2.1"},
      {:phoenix_pubsub_nats, "~> 0.2"},
      {:jason, "~> 1.3"},
      {:nimble_parsec, "~> 1.2.3"},
      {:sbroker, "~> 1.0.0"},
      # Metrics & Tracing deps
      {:telemetry_poller, "~> 1.0"},
      {:telemetry_metrics, "~> 0.6.1"},
      {:telemetry_metrics_prometheus_core, "~> 1.1"},
      {:opentelemetry_api, "~> 1.0"},
      {:opentelemetry, "~> 1.0"},
      {:opentelemetry_exporter, "~> 1.0"},
      # Statestores deps
      {:spawn_statestores_mssql, "1.0.0-rc.18", optional: true},
      {:spawn_statestores_mysql, "1.0.0-rc.18", optional: true},
      {:spawn_statestores_postgres, "1.0.0-rc.18", optional: true},
      {:spawn_statestores_sqlite, "1.0.0-rc.18", optional: true},
      {:spawn_statestores_cockroachdb, "1.0.0-rc.18", optional: true},
      {:pluggable, "~> 1.0"},
      # Non runtime deps
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:faker, "~> 0.17", only: :test},
      {:mimic, "~> 1.7", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp elixirc_paths(:test),
    do: ["lib", "test/support", "spawn_statestores/statestores/test/support"]

  defp elixirc_paths(_), do: ["lib"]
end
