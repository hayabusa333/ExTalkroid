defmodule ExTalkroid do

  def main(args) do
    init()
    hoge = "テスト"
    conf = Mix.Config.read!("config/config.exs")
    System.cmd("#{conf[:softalk][:dir_path]}/SofTalkw.exe", ["/S:#{conf[:softalk][:speed]}", "/V:#{conf[:softalk][:volume]}", "/W:#{hoge}"])
  end

  def talk(comment) do
    init()
    conf = Mix.Config.read!("config/config.exs")
    System.cmd("#{conf[:softalk][:dir_path]}/SofTalkw.exe", ["/S:#{conf[:softalk][:speed]}", "/V:#{conf[:softalk][:volume]}", "/W:#{comment}"])
  end

  def init do
    ExTalkroid.Softalk.init()
  end
end
