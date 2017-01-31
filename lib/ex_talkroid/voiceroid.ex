defmodule ExTalkroid.Voiceroid do
  def talk(comment) do
    path = Path.absname("bin/VoiceroidController.exe")
    System.cmd(path, option(comment))
  end

  def option(comment) do
    ["#{comment}"]
  end
end