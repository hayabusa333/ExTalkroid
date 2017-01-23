defmodule ExTalkroid do
  def main(args) do
    init()
    hoge = "テスト"
    conf = Mix.Config.read!("config/config.exs")
    System.cmd("#{conf[:softalk][:dir_path]}/SofTalkw.exe", ["/S:100", "/V:100", "/W:#{hoge}"])
  end

  def init do
    conf = Mix.Config.read!("config/config.exs")
    case System.cmd("#{conf[:softalk][:dir_path]}/SofTalkw.exe", ["/X:1"]) do
      {"", 0} ->
        :ok
      _ ->
        :error
    end
  end
end
