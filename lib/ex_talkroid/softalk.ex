defmodule ExTalkroid.Softalk do
  def init do
    case System.cmd(exe_path(), ["/X:1"]) do
      {"", 0} ->
        :ok
      _ ->
        raise "Softalk path error"
    end
  end

  def talk(comment) do
    System.cmd(exe_path(), option(comment))
  end

  def exe_path() do
    "#{Application.get_env(:softalk, :dir_path)}/SofTalkw.exe"
  end

  def option(comment) do
    [speed(), volume(), "/W:#{comment}"]
  end

  def speed() do
    "/S:#{Application.get_env(:softalk, :speed)}"
  end

  def volume() do
    "/V:#{Application.get_env(:softalk, :volume)}"
  end
end