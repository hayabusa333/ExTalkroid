defmodule ExTalkroid.Cli do
  def main(args) do
    ExTalkroid.Softalk.init()
    comment = "テスト"
    ExTalkroid.Softalk.talk(comment)
  end
end
