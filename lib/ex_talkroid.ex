defmodule ExTalkroid do

  def talk(comment) do
    init()
    ExTalkroid.Softalk.talk(comment)
  end

  def talk(comment, talkroid) do
    case talkroid do
      "voiceroid" ->
        ExTalkroid.Voiceroid.talk(comment)
      "softalk" ->
        init()
        ExTalkroid.Softalk.talk(comment)
      _ ->
        init()
        ExTalkroid.Softalk.talk(comment)
    end
  end

  def init do
    ExTalkroid.Softalk.init()
  end
end
