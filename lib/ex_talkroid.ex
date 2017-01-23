defmodule ExTalkroid do
  def main(args) do
    init()
    hoge = "テスト"
    conf = Mix.Config.read!("config/config.exs")
    System.cmd("#{conf[:softalk][:dir_path]}/SofTalkw.exe", ["/S:#{conf[:softalk][:speed]}", "/V:#{conf[:softalk][:volume]}", "/W:#{hoge}"])
  end

  def init do
    conf = Mix.Config.read!("config/config.exs")
    case System.cmd("#{conf[:softalk][:dir_path]}/SofTalkw.exe", ["/X:1"]) do
      {"", 0} ->
        :ok
      _ ->
        raise "Softalk path error"
    end
  end
end
