defmodule ExTalkroid do

  def talk(comment) do
    init()
    ExTalkroid.Softalk.talk(comment)
  end

  def init do
    ExTalkroid.Softalk.init()
  end
end
