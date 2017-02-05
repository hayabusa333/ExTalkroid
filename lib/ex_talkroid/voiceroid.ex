defmodule ExTalkroid.Voiceroid do
  def talk(comment) do
    System.cmd(exe_path, option(comment))
  end

  def exe_path() do
    "#{Application.get_env(:voiceroid, :dir_path)}/VoiceroidCmd.exe"
  end

  def option(comment) do
    ["#{comment}"]
  end
end