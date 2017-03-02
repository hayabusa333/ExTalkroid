ExTalkroid
====

Overview
That talk Voiceroid or Softalk from Elixir

## Demo

## Usage

### escript

 --help : -h          Help information.
 --comment : -c       Value to talk softalk
 --talkroid : -t      select voiceroid or softalk (default softalk)


### Library

```elixir
ExTalkroid.talk("テスト", "voiceroid") # voiceroid talk

ExTalkroid.talk("テスト", "softalk") # softalk talk
```

## Install

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_talkroid` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_talkroid, "~> 0.1.0"}]
end
```

```elixir
config :softalk,
  dir_path: "D:/tool/softalk", # softalk full path
  speed: "100", # softalk speed value
  volume: "100" # softalk volume value

config :voiceroid,
  dir_path: "D:/program/elixir/ex_talkroid/bin" # voiceroid full path
```