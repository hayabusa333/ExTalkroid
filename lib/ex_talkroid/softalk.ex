defmodule ExTalkroid.Softalk do
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