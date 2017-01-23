defmodule ExTalkroid do
  def main(args) do
    hoge = "テスト"
    conf = Mix.Config.read!("config/config.exs")
    System.cmd("#{conf[:softalk][:dir_path]}/SofTalkw.exe", ["/S:100", "/V:100", "/W:#{hoge}"])
  end

  def init do

  end
end
